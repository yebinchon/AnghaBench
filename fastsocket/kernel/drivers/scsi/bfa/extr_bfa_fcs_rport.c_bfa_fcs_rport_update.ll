; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i64, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.fc_logi_s = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }

@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_CLASS_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, %struct.fc_logi_s*)* @bfa_fcs_rport_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_update(%struct.bfa_fcs_rport_s* %0, %struct.fc_logi_s* %1) #0 {
  %3 = alloca %struct.bfa_fcs_rport_s*, align 8
  %4 = alloca %struct.fc_logi_s*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %3, align 8
  store %struct.fc_logi_s* %1, %struct.fc_logi_s** %4, align 8
  %6 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %6, i32 0, i32 5
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %10 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %15 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %22 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @FC_CLASS_3, align 4
  %28 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %32 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* @FC_CLASS_2, align 4
  %38 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %44 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %50 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @be16_to_cpu(i32 %52)
  %54 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %55 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @be16_to_cpu(i32 %57)
  %59 = icmp slt i64 %53, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %42
  %61 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %62 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @be16_to_cpu(i32 %64)
  %66 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %76

68:                                               ; preds = %42
  %69 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %70 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @be16_to_cpu(i32 %72)
  %74 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %75 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %68, %60
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %81 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @be16_to_cpu(i32 %83)
  %85 = call i32 @bfa_trc(%struct.TYPE_11__* %79, i64 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @bfa_trc(%struct.TYPE_11__* %88, i64 %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = call i32 @bfa_fcs_fabric_is_switched(%struct.TYPE_12__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %151, label %100

100:                                              ; preds = %76
  %101 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %102 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @be16_to_cpu(i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %105, %110
  br i1 %111, label %112, label %151

112:                                              ; preds = %100
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %117 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @be16_to_cpu(i32 %119)
  %121 = call i32 @bfa_trc(%struct.TYPE_11__* %115, i64 %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @bfa_trc(%struct.TYPE_11__* %124, i64 %129)
  %131 = load %struct.fc_logi_s*, %struct.fc_logi_s** %4, align 8
  %132 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @be16_to_cpu(i32 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  store i64 %135, i64* %139, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @bfa_fcport_set_tx_bbcredit(i32 %144, i64 %149)
  br label %151

151:                                              ; preds = %112, %100, %76
  ret void
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @bfa_trc(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @bfa_fcs_fabric_is_switched(%struct.TYPE_12__*) #1

declare dso_local i32 @bfa_fcport_set_tx_bbcredit(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
