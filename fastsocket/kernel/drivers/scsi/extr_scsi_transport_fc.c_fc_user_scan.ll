; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_user_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_user_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64, i64, i64 }

@SCAN_WILD_CARD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i64, i64, i64)* @fc_user_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_user_scan(%struct.Scsi_Host* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @SCAN_WILD_CARD, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %17, %4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @SCAN_WILD_CARD, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %27, %23
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @SCAN_WILD_CARD, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %27, %17
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %95

46:                                               ; preds = %37, %33
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @SCAN_WILD_CARD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  store i64 0, i64* %10, align 8
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %11, align 8
  br label %59

55:                                               ; preds = %46
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @SCAN_WILD_CARD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  store i64 0, i64* %12, align 8
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %13, align 8
  br label %71

67:                                               ; preds = %59
  %68 = load i64, i64* %8, align 8
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %13, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %91, %71
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %87, %76
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @fc_user_scan_tgt(%struct.Scsi_Host* %82, i64 %83, i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %12, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %12, align 8
  br label %77

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %10, align 8
  br label %72

94:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %43
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @fc_user_scan_tgt(%struct.Scsi_Host*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
