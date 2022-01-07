; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_aux_native_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_aux_native_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }

@AUX_NATIVE_READ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_MASK = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_ACK = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_DEFER = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_connector*, i32, i32*, i32, i32)* @radeon_dp_aux_native_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_dp_aux_native_read(%struct.radeon_connector* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_connector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.radeon_connector_atom_dig*, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
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
  store i32 4, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @AUX_NATIVE_READ, align 4
  %27 = shl i32 %26, 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %14, align 4
  %30 = shl i32 %29, 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %31, 1
  %33 = or i32 %30, %32
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %86, %5
  %36 = load i32, i32* %17, align 4
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %38, label %89

38:                                               ; preds = %35
  %39 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  %40 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @radeon_process_aux_ch(i32 %41, i32* %42, i32 %43, i32* %44, i32 %45, i32 %46, i32* %15)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %86

53:                                               ; preds = %38
  %54 = load i32, i32* %16, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %6, align 4
  br label %92

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @AUX_NATIVE_REPLY_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @AUX_NATIVE_REPLY_ACK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %6, align 4
  br label %92

67:                                               ; preds = %59
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @AUX_NATIVE_REPLY_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @AUX_NATIVE_REPLY_DEFER, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @udelay(i32 400)
  br label %84

75:                                               ; preds = %67
  %76 = load i32, i32* %16, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @EPROTO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %92

81:                                               ; preds = %75
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %92

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %52
  %87 = load i32, i32* %17, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %17, align 4
  br label %35

89:                                               ; preds = %35
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %81, %78, %65, %56
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @radeon_process_aux_ch(i32, i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
