; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pg.c_pg_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pg.c_pg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg = type { i32, i32, i32*, i64, i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.pg* }

@devices = common dso_local global %struct.pg* null, align 8
@PG_UNITS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@PG_MAX_DATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: buffer allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @pg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pg*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  %10 = and i32 %9, 127
  store i32 %10, i32* %5, align 4
  %11 = load %struct.pg*, %struct.pg** @devices, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.pg, %struct.pg* %11, i64 %13
  store %struct.pg* %14, %struct.pg** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = call i32 (...) @lock_kernel()
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PG_UNITS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.pg*, %struct.pg** %6, align 8
  %21 = getelementptr inbounds %struct.pg, %struct.pg* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %74

27:                                               ; preds = %19
  %28 = load %struct.pg*, %struct.pg** %6, align 8
  %29 = getelementptr inbounds %struct.pg, %struct.pg* %28, i32 0, i32 1
  %30 = call i64 @test_and_set_bit(i32 0, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %74

35:                                               ; preds = %27
  %36 = load %struct.pg*, %struct.pg** %6, align 8
  %37 = getelementptr inbounds %struct.pg, %struct.pg* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.pg*, %struct.pg** %6, align 8
  %42 = call i32 @pg_reset(%struct.pg* %41)
  %43 = load %struct.pg*, %struct.pg** %6, align 8
  %44 = getelementptr inbounds %struct.pg, %struct.pg* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.pg*, %struct.pg** %6, align 8
  %47 = load i32, i32* @verbose, align 4
  %48 = icmp sgt i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i32 @pg_identify(%struct.pg* %46, i32 %49)
  %51 = load i32, i32* @PG_MAX_DATA, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32* @kmalloc(i32 %51, i32 %52)
  %54 = load %struct.pg*, %struct.pg** %6, align 8
  %55 = getelementptr inbounds %struct.pg, %struct.pg* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.pg*, %struct.pg** %6, align 8
  %57 = getelementptr inbounds %struct.pg, %struct.pg* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %45
  %61 = load %struct.pg*, %struct.pg** %6, align 8
  %62 = getelementptr inbounds %struct.pg, %struct.pg* %61, i32 0, i32 1
  %63 = call i32 @clear_bit(i32 0, i32* %62)
  %64 = load %struct.pg*, %struct.pg** %6, align 8
  %65 = getelementptr inbounds %struct.pg, %struct.pg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %74

70:                                               ; preds = %45
  %71 = load %struct.pg*, %struct.pg** %6, align 8
  %72 = load %struct.file*, %struct.file** %4, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 0
  store %struct.pg* %71, %struct.pg** %73, align 8
  br label %74

74:                                               ; preds = %70, %60, %32, %24
  %75 = call i32 (...) @unlock_kernel()
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pg_reset(%struct.pg*) #1

declare dso_local i32 @pg_identify(%struct.pg*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
