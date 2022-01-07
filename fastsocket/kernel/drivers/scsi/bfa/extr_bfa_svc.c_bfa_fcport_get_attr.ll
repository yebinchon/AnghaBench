; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_get_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.bfa_port_attr_s = type { i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.bfa_fcport_s = type { i32, %struct.TYPE_8__*, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@FC_CLASS_3 = common dso_local global i32 0, align 4
@hal_port_sm_table = common dso_local global i32 0, align 4
@BFA_PORT_ST_PREBOOT_DISABLED = common dso_local global i32 0, align 4
@BFA_PORT_ST_IOCDIS = common dso_local global i32 0, align 4
@BFA_PORT_ST_FWMISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcport_get_attr(%struct.bfa_s* %0, %struct.bfa_port_attr_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfa_port_attr_s*, align 8
  %5 = alloca %struct.bfa_fcport_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfa_port_attr_s* %1, %struct.bfa_port_attr_s** %4, align 8
  %6 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %7 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.bfa_s* %6)
  store %struct.bfa_fcport_s* %7, %struct.bfa_fcport_s** %5, align 8
  %8 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %9 = call i32 @memset(%struct.bfa_port_attr_s* %8, i32 0, i32 72)
  %10 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %14 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %13, i32 0, i32 13
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %18, i32 0, i32 12
  store i32 %17, i32* %19, align 4
  %20 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %27 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %35 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %34, i32 0, i32 10
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %36, i32 0, i32 3
  %38 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %38, i32 0, i32 6
  %40 = call i32 @memcpy(%struct.TYPE_9__* %37, %struct.TYPE_10__* %39, i32 4)
  %41 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %42 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 4
  %48 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %52 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %57 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @FC_CLASS_3, align 4
  %59 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %60 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %62 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %66 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 4
  %68 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %69 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %72 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %74 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %78 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %81 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %84 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %86 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %89 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %91 = call i32 @bfa_fcpim_path_tov_get(%struct.bfa_s* %90)
  %92 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %93 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %96 = call i32 @bfa_fcpim_qdepth_get(%struct.bfa_s* %95)
  %97 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %98 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @hal_port_sm_table, align 4
  %101 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %102 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @bfa_sm_to_state(i32 %100, i32 %103)
  %105 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %106 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %108 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %111 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %113 = call i64 @bfa_fcport_is_pbcdisabled(%struct.bfa_s* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %2
  %116 = load i32, i32* @BFA_PORT_ST_PREBOOT_DISABLED, align 4
  %117 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %118 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %143

119:                                              ; preds = %2
  %120 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %121 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = call i64 @bfa_ioc_is_disabled(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32, i32* @BFA_PORT_ST_IOCDIS, align 4
  %128 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %129 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %142

130:                                              ; preds = %119
  %131 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %132 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = call i64 @bfa_ioc_fw_mismatch(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @BFA_PORT_ST_FWMISMATCH, align 4
  %139 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %140 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %137, %130
  br label %142

142:                                              ; preds = %141, %126
  br label %143

143:                                              ; preds = %142, %115
  %144 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %5, align 8
  %145 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.bfa_port_attr_s*, %struct.bfa_port_attr_s** %4, align 8
  %148 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  ret void
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.bfa_s*) #1

declare dso_local i32 @memset(%struct.bfa_port_attr_s*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @bfa_fcpim_path_tov_get(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcpim_qdepth_get(%struct.bfa_s*) #1

declare dso_local i32 @bfa_sm_to_state(i32, i32) #1

declare dso_local i64 @bfa_fcport_is_pbcdisabled(%struct.bfa_s*) #1

declare dso_local i64 @bfa_ioc_is_disabled(i32*) #1

declare dso_local i64 @bfa_ioc_fw_mismatch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
