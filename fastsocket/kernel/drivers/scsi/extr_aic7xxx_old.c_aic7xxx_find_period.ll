; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_find_period.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_find_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_syncrate = type { i32, i32, i32, i32** }
%struct.aic7xxx_host = type { i32 }

@AHC_ULTRA2 = common dso_local global i32 0, align 4
@SXFR_ULTRA2 = common dso_local global i32 0, align 4
@SXFR = common dso_local global i32 0, align 4
@aic7xxx_syncrates = common dso_local global %struct.aic7xxx_syncrate* null, align 8
@AHC_SYNCRATE_CRC = common dso_local global i32 0, align 4
@ULTRA_SXFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aic7xxx_host*, i32, i32)* @aic7xxx_find_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic7xxx_find_period(%struct.aic7xxx_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aic7xxx_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aic7xxx_syncrate*, align 8
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %10 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AHC_ULTRA2, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @SXFR_ULTRA2, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @SXFR, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.aic7xxx_syncrate*, %struct.aic7xxx_syncrate** @aic7xxx_syncrates, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.aic7xxx_syncrate, %struct.aic7xxx_syncrate* %24, i64 %26
  store %struct.aic7xxx_syncrate* %27, %struct.aic7xxx_syncrate** %8, align 8
  br label %28

28:                                               ; preds = %88, %23
  %29 = load %struct.aic7xxx_syncrate*, %struct.aic7xxx_syncrate** %8, align 8
  %30 = getelementptr inbounds %struct.aic7xxx_syncrate, %struct.aic7xxx_syncrate* %29, i32 0, i32 3
  %31 = load i32**, i32*** %30, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %91

35:                                               ; preds = %28
  %36 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %37 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AHC_ULTRA2, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %35
  %43 = load %struct.aic7xxx_syncrate*, %struct.aic7xxx_syncrate** %8, align 8
  %44 = getelementptr inbounds %struct.aic7xxx_syncrate, %struct.aic7xxx_syncrate* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %91

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.aic7xxx_syncrate*, %struct.aic7xxx_syncrate** %8, align 8
  %51 = getelementptr inbounds %struct.aic7xxx_syncrate, %struct.aic7xxx_syncrate* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.aic7xxx_syncrate*, %struct.aic7xxx_syncrate** %8, align 8
  %56 = getelementptr inbounds %struct.aic7xxx_syncrate, %struct.aic7xxx_syncrate* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %4, align 4
  br label %92

58:                                               ; preds = %48
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.aic7xxx_syncrate*, %struct.aic7xxx_syncrate** %8, align 8
  %61 = getelementptr inbounds %struct.aic7xxx_syncrate, %struct.aic7xxx_syncrate* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AHC_SYNCRATE_CRC, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = icmp eq i32 %59, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.aic7xxx_syncrate*, %struct.aic7xxx_syncrate** %8, align 8
  %69 = getelementptr inbounds %struct.aic7xxx_syncrate, %struct.aic7xxx_syncrate* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %4, align 4
  br label %92

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  br label %88

74:                                               ; preds = %35
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.aic7xxx_syncrate*, %struct.aic7xxx_syncrate** %8, align 8
  %77 = getelementptr inbounds %struct.aic7xxx_syncrate, %struct.aic7xxx_syncrate* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ULTRA_SXFR, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = icmp eq i32 %75, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.aic7xxx_syncrate*, %struct.aic7xxx_syncrate** %8, align 8
  %85 = getelementptr inbounds %struct.aic7xxx_syncrate, %struct.aic7xxx_syncrate* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %4, align 4
  br label %92

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %73
  %89 = load %struct.aic7xxx_syncrate*, %struct.aic7xxx_syncrate** %8, align 8
  %90 = getelementptr inbounds %struct.aic7xxx_syncrate, %struct.aic7xxx_syncrate* %89, i32 1
  store %struct.aic7xxx_syncrate* %90, %struct.aic7xxx_syncrate** %8, align 8
  br label %28

91:                                               ; preds = %47, %28
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %83, %67, %54
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
