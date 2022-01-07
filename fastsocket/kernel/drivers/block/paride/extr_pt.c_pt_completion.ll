; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pt.c_pt_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pt.c_pt_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { %struct.pi_adapter* }
%struct.pi_adapter = type { i32 }

@STAT_BUSY = common dso_local global i32 0, align 4
@STAT_DRQ = common dso_local global i32 0, align 4
@STAT_READY = common dso_local global i32 0, align 4
@STAT_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"data done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_unit*, i8*, i8*)* @pt_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_completion(%struct.pt_unit* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.pt_unit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pi_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pt_unit* %0, %struct.pt_unit** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.pt_unit*, %struct.pt_unit** %4, align 8
  %13 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %12, i32 0, i32 0
  %14 = load %struct.pi_adapter*, %struct.pi_adapter** %13, align 8
  store %struct.pi_adapter* %14, %struct.pi_adapter** %7, align 8
  %15 = load %struct.pt_unit*, %struct.pt_unit** %4, align 8
  %16 = load i32, i32* @STAT_BUSY, align 4
  %17 = load i32, i32* @STAT_DRQ, align 4
  %18 = load i32, i32* @STAT_READY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @STAT_ERR, align 4
  %21 = or i32 %19, %20
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @pt_wait(%struct.pt_unit* %15, i32 %16, i32 %21, i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %8, align 4
  %24 = load %struct.pi_adapter*, %struct.pi_adapter** %7, align 8
  %25 = call i32 @read_reg(%struct.pi_adapter* %24, i32 7)
  %26 = load i32, i32* @STAT_DRQ, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %3
  %30 = load %struct.pi_adapter*, %struct.pi_adapter** %7, align 8
  %31 = call i32 @read_reg(%struct.pi_adapter* %30, i32 4)
  %32 = load %struct.pi_adapter*, %struct.pi_adapter** %7, align 8
  %33 = call i32 @read_reg(%struct.pi_adapter* %32, i32 5)
  %34 = mul nsw i32 256, %33
  %35 = add nsw i32 %31, %34
  %36 = add nsw i32 %35, 3
  %37 = and i32 %36, 65532
  store i32 %37, i32* %10, align 4
  %38 = load %struct.pi_adapter*, %struct.pi_adapter** %7, align 8
  %39 = call i32 @read_reg(%struct.pi_adapter* %38, i32 2)
  %40 = and i32 %39, 3
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.pi_adapter*, %struct.pi_adapter** %7, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @pi_write_block(%struct.pi_adapter* %44, i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %29
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.pi_adapter*, %struct.pi_adapter** %7, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @pi_read_block(%struct.pi_adapter* %52, i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %48
  br label %57

57:                                               ; preds = %56, %3
  %58 = load %struct.pt_unit*, %struct.pt_unit** %4, align 8
  %59 = load i32, i32* @STAT_BUSY, align 4
  %60 = load i32, i32* @STAT_READY, align 4
  %61 = load i32, i32* @STAT_ERR, align 4
  %62 = or i32 %60, %61
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @pt_wait(%struct.pt_unit* %58, i32 %59, i32 %62, i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %64, i32* %9, align 4
  %65 = load %struct.pi_adapter*, %struct.pi_adapter** %7, align 8
  %66 = call i32 @pi_disconnect(%struct.pi_adapter* %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  br label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  ret i32 %74
}

declare dso_local i32 @pt_wait(%struct.pt_unit*, i32, i32, i8*, i8*) #1

declare dso_local i32 @read_reg(%struct.pi_adapter*, i32) #1

declare dso_local i32 @pi_write_block(%struct.pi_adapter*, i8*, i32) #1

declare dso_local i32 @pi_read_block(%struct.pi_adapter*, i8*, i32) #1

declare dso_local i32 @pi_disconnect(%struct.pi_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
