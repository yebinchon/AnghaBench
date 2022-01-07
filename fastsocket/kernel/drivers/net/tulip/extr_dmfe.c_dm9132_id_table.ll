; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dm9132_id_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dm9132_id_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DEVICE = type { i32, %struct.dev_mc_list*, i64 }
%struct.dev_mc_list = type { i64, %struct.dev_mc_list* }

@.str = private unnamed_addr constant [18 x i8] c"dm9132_id_table()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.DEVICE*, i32)* @dm9132_id_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9132_id_table(%struct.DEVICE* %0, i32 %1) #0 {
  %3 = alloca %struct.DEVICE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  store %struct.DEVICE* %0, %struct.DEVICE** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.DEVICE*, %struct.DEVICE** %3, align 8
  %12 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 192
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  %16 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 0)
  %17 = load %struct.DEVICE*, %struct.DEVICE** %3, align 8
  %18 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @outw(i32 %23, i64 %24)
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @outw(i32 %30, i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @outw(i32 %37, i64 %38)
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 4
  store i64 %41, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %49, %2
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %47
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %42

52:                                               ; preds = %42
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 32768, i32* %53, align 4
  %54 = load %struct.DEVICE*, %struct.DEVICE** %3, align 8
  %55 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %54, i32 0, i32 1
  %56 = load %struct.dev_mc_list*, %struct.dev_mc_list** %55, align 8
  store %struct.dev_mc_list* %56, %struct.dev_mc_list** %5, align 8
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %77, %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %57
  %62 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %63 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @cal_CRC(i8* %65, i32 6, i32 0)
  %67 = and i32 %66, 63
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = srem i32 %68, 16
  %70 = shl i32 1, %69
  %71 = load i32, i32* %8, align 4
  %72 = sdiv i32 %71, 16
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %81 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %80, i32 0, i32 1
  %82 = load %struct.dev_mc_list*, %struct.dev_mc_list** %81, align 8
  store %struct.dev_mc_list* %82, %struct.dev_mc_list** %5, align 8
  br label %57

83:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %94, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @outw(i32 %91, i64 %92)
  br label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %97, 4
  store i64 %98, i64* %7, align 8
  br label %84

99:                                               ; preds = %84
  ret void
}

declare dso_local i32 @DMFE_DBUG(i32, i8*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @cal_CRC(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
