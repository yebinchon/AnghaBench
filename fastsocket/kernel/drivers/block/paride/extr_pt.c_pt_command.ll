; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pt.c_pt_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pt.c_pt_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { i32, %struct.pi_adapter* }
%struct.pi_adapter = type { i32 }

@STAT_BUSY = common dso_local global i32 0, align 4
@STAT_DRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"before command\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"command DRQ\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: %s: command phase error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_unit*, i8*, i32, i8*)* @pt_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_command(%struct.pt_unit* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_unit*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pi_adapter*, align 8
  store %struct.pt_unit* %0, %struct.pt_unit** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %12 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %11, i32 0, i32 1
  %13 = load %struct.pi_adapter*, %struct.pi_adapter** %12, align 8
  store %struct.pi_adapter* %13, %struct.pi_adapter** %10, align 8
  %14 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %15 = call i32 @pi_connect(%struct.pi_adapter* %14)
  %16 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %17 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %18 = call i32 @DRIVE(%struct.pt_unit* %17)
  %19 = call i32 @write_reg(%struct.pi_adapter* %16, i32 6, i32 %18)
  %20 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %21 = load i32, i32* @STAT_BUSY, align 4
  %22 = load i32, i32* @STAT_DRQ, align 4
  %23 = or i32 %21, %22
  %24 = load i8*, i8** %9, align 8
  %25 = call i64 @pt_wait(%struct.pt_unit* %20, i32 %23, i32 0, i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %29 = call i32 @pi_disconnect(%struct.pi_adapter* %28)
  store i32 -1, i32* %5, align 4
  br label %66

30:                                               ; preds = %4
  %31 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %32 = load i32, i32* %8, align 4
  %33 = srem i32 %32, 256
  %34 = call i32 @write_reg(%struct.pi_adapter* %31, i32 4, i32 %33)
  %35 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sdiv i32 %36, 256
  %38 = call i32 @write_reg(%struct.pi_adapter* %35, i32 5, i32 %37)
  %39 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %40 = call i32 @write_reg(%struct.pi_adapter* %39, i32 7, i32 160)
  %41 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %42 = load i32, i32* @STAT_BUSY, align 4
  %43 = load i32, i32* @STAT_DRQ, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i64 @pt_wait(%struct.pt_unit* %41, i32 %42, i32 %43, i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %49 = call i32 @pi_disconnect(%struct.pi_adapter* %48)
  store i32 -1, i32* %5, align 4
  br label %66

50:                                               ; preds = %30
  %51 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %52 = call i32 @read_reg(%struct.pi_adapter* %51, i32 2)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %56 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %57, i8* %58)
  %60 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %61 = call i32 @pi_disconnect(%struct.pi_adapter* %60)
  store i32 -1, i32* %5, align 4
  br label %66

62:                                               ; preds = %50
  %63 = load %struct.pi_adapter*, %struct.pi_adapter** %10, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @pi_write_block(%struct.pi_adapter* %63, i8* %64, i32 12)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %54, %47, %27
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @pi_connect(%struct.pi_adapter*) #1

declare dso_local i32 @write_reg(%struct.pi_adapter*, i32, i32) #1

declare dso_local i32 @DRIVE(%struct.pt_unit*) #1

declare dso_local i64 @pt_wait(%struct.pt_unit*, i32, i32, i8*, i8*) #1

declare dso_local i32 @pi_disconnect(%struct.pi_adapter*) #1

declare dso_local i32 @read_reg(%struct.pi_adapter*, i32) #1

declare dso_local i32 @printk(i8*, i32, i8*) #1

declare dso_local i32 @pi_write_block(%struct.pi_adapter*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
