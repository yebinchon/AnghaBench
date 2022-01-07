; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { %struct.TYPE_4__, i32, i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s startup\0A\00", align 1
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s can't allocate tx buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @startup(%struct.slgt_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slgt_info*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %5 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @DBGINFO(i8* %8)
  %10 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %11 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

18:                                               ; preds = %1
  %19 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %20 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %18
  %24 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %25 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i64 @kmalloc(i32 %26, i32 %27)
  %29 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %32 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %23
  %36 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %37 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @DBGERR(i8* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %73

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %47 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %49 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %48, i32 0, i32 1
  %50 = call i32 @memset(i32* %49, i32 0, i32 4)
  %51 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %52 = call i32 @change_params(%struct.slgt_info* %51)
  %53 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %54 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %45
  %59 = load i32, i32* @TTY_IO_ERROR, align 4
  %60 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %61 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %59, i32* %64)
  br label %66

66:                                               ; preds = %58, %45
  %67 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %68 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %69 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %35, %17
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @DBGERR(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @change_params(%struct.slgt_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
