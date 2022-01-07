; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32, i32, i32 }

@IDE_BUSY = common dso_local global i32 0, align 4
@IDE_DRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"before command\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"command DRQ\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: %s: command phase error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcd_unit*, i8*, i32, i8*)* @pcd_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_command(%struct.pcd_unit* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcd_unit*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.pcd_unit* %0, %struct.pcd_unit** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %11 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pi_connect(i32 %12)
  %14 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %15 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %16 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 16, %17
  %19 = add nsw i32 160, %18
  %20 = call i32 @write_reg(%struct.pcd_unit* %14, i32 6, i32 %19)
  %21 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %22 = load i32, i32* @IDE_BUSY, align 4
  %23 = load i32, i32* @IDE_DRQ, align 4
  %24 = or i32 %22, %23
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @pcd_wait(%struct.pcd_unit* %21, i32 %24, i32 0, i8* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %30 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pi_disconnect(i32 %31)
  store i32 -1, i32* %5, align 4
  br label %75

33:                                               ; preds = %4
  %34 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = srem i32 %35, 256
  %37 = call i32 @write_reg(%struct.pcd_unit* %34, i32 4, i32 %36)
  %38 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sdiv i32 %39, 256
  %41 = call i32 @write_reg(%struct.pcd_unit* %38, i32 5, i32 %40)
  %42 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %43 = call i32 @write_reg(%struct.pcd_unit* %42, i32 7, i32 160)
  %44 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %45 = load i32, i32* @IDE_BUSY, align 4
  %46 = load i32, i32* @IDE_DRQ, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @pcd_wait(%struct.pcd_unit* %44, i32 %45, i32 %46, i8* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %33
  %51 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %52 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pi_disconnect(i32 %53)
  store i32 -1, i32* %5, align 4
  br label %75

55:                                               ; preds = %33
  %56 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %57 = call i32 @read_reg(%struct.pcd_unit* %56, i32 2)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %61 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %62, i8* %63)
  %65 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %66 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pi_disconnect(i32 %67)
  store i32 -1, i32* %5, align 4
  br label %75

69:                                               ; preds = %55
  %70 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %71 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @pi_write_block(i32 %72, i8* %73, i32 12)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %69, %59, %50, %28
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @pi_connect(i32) #1

declare dso_local i32 @write_reg(%struct.pcd_unit*, i32, i32) #1

declare dso_local i64 @pcd_wait(%struct.pcd_unit*, i32, i32, i8*, i8*) #1

declare dso_local i32 @pi_disconnect(i32) #1

declare dso_local i32 @read_reg(%struct.pcd_unit*, i32) #1

declare dso_local i32 @printk(i8*, i32, i8*) #1

declare dso_local i32 @pi_write_block(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
