; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_identify_activate_IRQ_req_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_identify_activate_IRQ_req_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.xpc_partition_sn2 }
%struct.xpc_partition_sn2 = type { i64 }
%struct.xpc_rsvd_page = type { i32, i64, i16, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.xpc_vars_sn2 = type { i32*, i32 }

@xpc_remote_copy_buffer_sn2 = common dso_local global i64 0, align 8
@xpSuccess = common dso_local global i32 0, align 4
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"unable to get reserved page from nasid %d, which sent interrupt, reason=%d\0A\00", align 1
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"unable to get XPC variables from nasid %d, which sent interrupt, reason=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"partid for nasid %d is %d; IRQs = %d; HB = %lld:0x%lx\0A\00", align 1
@XPC_P_AS_INACTIVE = common dso_local global i64 0, align 8
@xpReactivating = common dso_local global i32 0, align 4
@xpOtherGoingDown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xpc_identify_activate_IRQ_req_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_identify_activate_IRQ_req_sn2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_rsvd_page*, align 8
  %4 = alloca %struct.xpc_vars_sn2*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca %struct.xpc_partition*, align 8
  %12 = alloca %struct.xpc_partition_sn2*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %14 = load i64, i64* @xpc_remote_copy_buffer_sn2, align 8
  %15 = inttoptr i64 %14 to %struct.xpc_rsvd_page*
  store %struct.xpc_rsvd_page* %15, %struct.xpc_rsvd_page** %3, align 8
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %18 = call i32 @xpc_get_remote_rp(i32 %16, i32* null, %struct.xpc_rsvd_page* %17, i64* %5)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @xpSuccess, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @xpc_part, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %166

27:                                               ; preds = %1
  %28 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %29 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %34 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  %36 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %37 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %40 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %39, i32 0, i32 2
  %41 = load i16, i16* %40, align 8
  store i16 %41, i16* %10, align 2
  %42 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %43 = load i16, i16* %10, align 2
  %44 = sext i16 %43 to i64
  %45 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %42, i64 %44
  store %struct.xpc_partition* %45, %struct.xpc_partition** %11, align 8
  %46 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %47 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store %struct.xpc_partition_sn2* %48, %struct.xpc_partition_sn2** %12, align 8
  %49 = load i64, i64* @xpc_remote_copy_buffer_sn2, align 8
  %50 = inttoptr i64 %49 to %struct.xpc_vars_sn2*
  store %struct.xpc_vars_sn2* %50, %struct.xpc_vars_sn2** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %53 = call i32 @xpc_get_remote_vars_sn2(i64 %51, %struct.xpc_vars_sn2* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @xpSuccess, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %27
  %58 = load i32, i32* @xpc_part, align 4
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @dev_warn(i32 %58, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %62, i32 %63)
  br label %166

65:                                               ; preds = %27
  %66 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %67 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @xpc_part, align 4
  %71 = load i32, i32* %2, align 4
  %72 = load i16, i16* %10, align 2
  %73 = sext i16 %72 to i32
  %74 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %75 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %78 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %81 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %73, i32 %76, i32 %79, i32 %84)
  %86 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %87 = call i64 @xpc_partition_disengaged(%struct.xpc_partition* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %65
  %90 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %91 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %101 = call i32 @xpc_update_partition_info_sn2(%struct.xpc_partition* %96, i32 %97, i64* %9, i64 %98, i64 %99, %struct.xpc_vars_sn2* %100)
  %102 = load i16, i16* %10, align 2
  %103 = call i32 @xpc_partition_deactivation_requested_sn2(i16 signext %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %166

106:                                              ; preds = %95
  %107 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %108 = call i32 @xpc_activate_partition(%struct.xpc_partition* %107)
  br label %166

109:                                              ; preds = %89, %65
  %110 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %111 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @DBUG_ON(i32 %114)
  %116 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %12, align 8
  %117 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @DBUG_ON(i32 %120)
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %124 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %109
  %128 = load i16, i16* %10, align 2
  %129 = call i32 @xpc_partition_engaged_sn2(i16 signext %128)
  %130 = call i32 @DBUG_ON(i32 %129)
  %131 = load i16, i16* %10, align 2
  %132 = call i32 @xpc_partition_deactivation_requested_sn2(i16 signext %131)
  %133 = call i32 @DBUG_ON(i32 %132)
  %134 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %139 = call i32 @xpc_update_partition_info_sn2(%struct.xpc_partition* %134, i32 %135, i64* %9, i64 %136, i64 %137, %struct.xpc_vars_sn2* %138)
  store i32 1, i32* %8, align 4
  br label %140

140:                                              ; preds = %127, %109
  %141 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %142 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %147 = call i64 @xpc_partition_disengaged(%struct.xpc_partition* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  br label %166

150:                                              ; preds = %145, %140
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %155 = load i32, i32* @xpReactivating, align 4
  %156 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %154, i32 %155)
  br label %166

157:                                              ; preds = %150
  %158 = load i16, i16* %10, align 2
  %159 = call i32 @xpc_partition_deactivation_requested_sn2(i16 signext %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %163 = load i32, i32* @xpOtherGoingDown, align 4
  %164 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %157
  br label %166

166:                                              ; preds = %22, %57, %105, %106, %149, %165, %153
  ret void
}

declare dso_local i32 @xpc_get_remote_rp(i32, i32*, %struct.xpc_rsvd_page*, i64*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @xpc_get_remote_vars_sn2(i64, %struct.xpc_vars_sn2*) #1

declare dso_local i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @xpc_partition_disengaged(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_update_partition_info_sn2(%struct.xpc_partition*, i32, i64*, i64, i64, %struct.xpc_vars_sn2*) #1

declare dso_local i32 @xpc_partition_deactivation_requested_sn2(i16 signext) #1

declare dso_local i32 @xpc_activate_partition(%struct.xpc_partition*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @xpc_partition_engaged_sn2(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
