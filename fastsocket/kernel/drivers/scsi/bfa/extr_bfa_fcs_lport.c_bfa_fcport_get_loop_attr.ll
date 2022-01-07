; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcport_get_loop_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcport_get_loop_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { %struct.TYPE_8__, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.bfa_fcport_s = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64* }

@FC_ALPA_MAX = common dso_local global i32 0, align 4
@loop_alpa_map = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcport_get_loop_attr(%struct.bfa_fcs_lport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_lport_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.bfa_fcport_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32 %13)
  store %struct.bfa_fcport_s* %14, %struct.bfa_fcport_s** %8, align 8
  %15 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %16 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %19 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i32 %17, i32* %21, align 8
  %22 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %23 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %26 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bfa_hton3b(i32 %29)
  %31 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %119, %1
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @FC_ALPA_MAX, align 4
  %36 = sdiv i32 %35, 8
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %122

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %113, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %118

42:                                               ; preds = %39
  %43 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %49 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @bfa_trc(i32 %47, i64 %55)
  %57 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %58 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 7, %65
  %67 = shl i32 1, %66
  %68 = sext i32 %67 to i64
  %69 = and i64 %64, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %112

73:                                               ; preds = %42
  %74 = load i64*, i64** @loop_alpa_map, align 8
  %75 = load i32, i32* %3, align 4
  %76 = mul nsw i32 %75, 8
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %74, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %83 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %81, i64* %88, align 8
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  %91 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %92 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @bfa_trc(i32 %95, i64 %96)
  %98 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %99 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %104 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @bfa_trc(i32 %102, i64 %110)
  br label %112

112:                                              ; preds = %73, %42
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %39

118:                                              ; preds = %39
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %33

122:                                              ; preds = %33
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %125 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i64 %123, i64* %127, align 8
  ret void
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32) #1

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @bfa_trc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
