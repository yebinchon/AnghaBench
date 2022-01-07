; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_aux_native_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_aux_native_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }

@AUX_NATIVE_WRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_MASK = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_ACK = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_DEFER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_connector*, i32, i32*, i32, i32)* @radeon_dp_aux_native_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_aux_native_write(%struct.radeon_connector* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_connector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.radeon_connector_atom_dig*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [20 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_connector* %0, %struct.radeon_connector** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.radeon_connector*, %struct.radeon_connector** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %18, i32 0, i32 0
  %20 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %19, align 8
  store %struct.radeon_connector_atom_dig* %20, %struct.radeon_connector_atom_dig** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %94

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 8
  %31 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @AUX_NATIVE_WRITE, align 4
  %33 = shl i32 %32, 4
  %34 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 2
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %15, align 4
  %36 = shl i32 %35, 4
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  %39 = or i32 %36, %38
  %40 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 3
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @memcpy(i32* %41, i32* %42, i32 %43)
  store i32 0, i32* %17, align 4
  br label %45

45:                                               ; preds = %88, %26
  %46 = load i32, i32* %17, align 4
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %48, label %91

48:                                               ; preds = %45
  %49 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  %50 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @radeon_process_aux_ch(i32 %51, i32* %52, i32 %53, i32* null, i32 0, i32 %54, i32* %16)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %88

61:                                               ; preds = %48
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %94

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @AUX_NATIVE_REPLY_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @AUX_NATIVE_REPLY_ACK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %6, align 4
  br label %94

75:                                               ; preds = %67
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @AUX_NATIVE_REPLY_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @AUX_NATIVE_REPLY_DEFER, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 @udelay(i32 400)
  br label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %94

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %60
  %89 = load i32, i32* %17, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %45

91:                                               ; preds = %45
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %91, %83, %73, %64, %25
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @radeon_process_aux_ch(i32, i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
