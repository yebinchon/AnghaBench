; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_loop_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_loop_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.bfa_fcs_rport_s = type { i32 }

@MAX_ALPA_COUNT = common dso_local global i32 0, align 4
@loop_alpa_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_s*)* @bfa_fcs_lport_loop_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_loop_online(%struct.bfa_fcs_lport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_lport_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_fcs_rport_s*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %10 = call i32 @bfa_fcport_get_loop_attr(%struct.bfa_fcs_lport_s* %9)
  %11 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %6, align 8
  %26 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bfa_trc(i32 %30, i32 %33)
  %35 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @bfa_trc(i32 %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %101

44:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %97, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %100

49:                                               ; preds = %45
  %50 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %51 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bfa_trc(i32 %54, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @bfa_hton3b(i32 %68)
  %70 = icmp ne i32 %65, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %49
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  %77 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %78 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @bfa_trc(i32 %81, i32 %82)
  %84 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @bfa_hton3b(i32 %85)
  %87 = call %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_pid(%struct.bfa_fcs_lport_s* %84, i32 %86)
  store %struct.bfa_fcs_rport_s* %87, %struct.bfa_fcs_rport_s** %5, align 8
  %88 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %89 = icmp ne %struct.bfa_fcs_rport_s* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %71
  %91 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @bfa_hton3b(i32 %92)
  %94 = call %struct.bfa_fcs_rport_s* @bfa_fcs_rport_create(%struct.bfa_fcs_lport_s* %91, i32 %93)
  store %struct.bfa_fcs_rport_s* %94, %struct.bfa_fcs_rport_s** %5, align 8
  br label %95

95:                                               ; preds = %90, %71
  br label %96

96:                                               ; preds = %95, %49
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %45

100:                                              ; preds = %45
  br label %146

101:                                              ; preds = %1
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %142, %101
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @MAX_ALPA_COUNT, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %145

106:                                              ; preds = %102
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %113 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %111, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %106
  %117 = load i32*, i32** @loop_alpa_map, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %8, align 4
  %122 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %123 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @bfa_trc(i32 %126, i32 %127)
  %129 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @bfa_hton3b(i32 %130)
  %132 = call %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_pid(%struct.bfa_fcs_lport_s* %129, i32 %131)
  store %struct.bfa_fcs_rport_s* %132, %struct.bfa_fcs_rport_s** %5, align 8
  %133 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %134 = icmp ne %struct.bfa_fcs_rport_s* %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %116
  %136 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @bfa_hton3b(i32 %137)
  %139 = call %struct.bfa_fcs_rport_s* @bfa_fcs_rport_create(%struct.bfa_fcs_lport_s* %136, i32 %138)
  store %struct.bfa_fcs_rport_s* %139, %struct.bfa_fcs_rport_s** %5, align 8
  br label %140

140:                                              ; preds = %135, %116
  br label %141

141:                                              ; preds = %140, %106
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %102

145:                                              ; preds = %102
  br label %146

146:                                              ; preds = %145, %100
  ret void
}

declare dso_local i32 @bfa_fcport_get_loop_attr(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_pid(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local %struct.bfa_fcs_rport_s* @bfa_fcs_rport_create(%struct.bfa_fcs_lport_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
