; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_link_down_info_eval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_link_down_info_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.zfcp_fsf_req = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fsf_link_down_info = type { i32 }

@ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED = common dso_local global i32 0, align 4
@zfcp_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [61 x i8] c"There is no light signal from the local fibre channel cable\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"There is a wrap plug instead of a fibre channel cable\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"The adjacent fibre channel node does not support FCP\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"The FCP device is suspended because of a firmware update\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"The FCP device detected a WWPN that is duplicate or not valid\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"The fibre channel fabric does not support NPIV\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"The FCP adapter cannot support more NPIV ports\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"The adjacent switch cannot support more NPIV ports\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"The FCP adapter could not log in to the fibre channel fabric\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"The WWPN assignment file on the FCP adapter has been damaged\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"The mode table on the FCP adapter has been damaged\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"All NPIV ports on the FCP adapter have been assigned\0A\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"The link between the FCP adapter and the FC fabric is down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*, i8*, %struct.fsf_link_down_info*)* @zfcp_fsf_link_down_info_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_link_down_info_eval(%struct.zfcp_fsf_req* %0, i8* %1, %struct.fsf_link_down_info* %2) #0 {
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsf_link_down_info*, align 8
  %7 = alloca %struct.zfcp_adapter*, align 8
  %8 = alloca i64, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.fsf_link_down_info* %2, %struct.fsf_link_down_info** %6, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 0
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  store %struct.zfcp_adapter* %11, %struct.zfcp_adapter** %7, align 8
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %13 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %12, i32 0, i32 1
  %14 = call i32 @atomic_read(i32* %13)
  %15 = load i32, i32* @ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %147

19:                                               ; preds = %3
  %20 = load i32, i32* @ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, align 4
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %21, i32 0, i32 1
  %23 = call i32 @atomic_set_mask(i32 %20, i32* %22)
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @read_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 0), i64 %24)
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %27 = call i32 @zfcp_scsi_schedule_rports_block(%struct.zfcp_adapter* %26)
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @read_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 0), i64 %28)
  %30 = load %struct.fsf_link_down_info*, %struct.fsf_link_down_info** %6, align 8
  %31 = icmp ne %struct.fsf_link_down_info* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  br label %142

33:                                               ; preds = %19
  %34 = load %struct.fsf_link_down_info*, %struct.fsf_link_down_info** %6, align 8
  %35 = getelementptr inbounds %struct.fsf_link_down_info, %struct.fsf_link_down_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %133 [
    i32 132, label %37
    i32 129, label %45
    i32 134, label %53
    i32 138, label %61
    i32 137, label %69
    i32 131, label %77
    i32 133, label %85
    i32 135, label %93
    i32 139, label %101
    i32 128, label %109
    i32 136, label %117
    i32 130, label %125
  ]

37:                                               ; preds = %33
  %38 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %39 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %38, i32 0, i32 0
  %40 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %39, align 8
  %41 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %141

45:                                               ; preds = %33
  %46 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %47 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %46, i32 0, i32 0
  %48 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %47, align 8
  %49 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %141

53:                                               ; preds = %33
  %54 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %55 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %54, i32 0, i32 0
  %56 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %55, align 8
  %57 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @dev_warn(i32* %59, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %141

61:                                               ; preds = %33
  %62 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %63 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %62, i32 0, i32 0
  %64 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %63, align 8
  %65 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @dev_warn(i32* %67, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %141

69:                                               ; preds = %33
  %70 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %71 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %70, i32 0, i32 0
  %72 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %71, align 8
  %73 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  br label %141

77:                                               ; preds = %33
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %79 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %78, i32 0, i32 0
  %80 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %79, align 8
  %81 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = call i32 @dev_warn(i32* %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %141

85:                                               ; preds = %33
  %86 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %87 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %86, i32 0, i32 0
  %88 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %87, align 8
  %89 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = call i32 @dev_warn(i32* %91, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %141

93:                                               ; preds = %33
  %94 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %95 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %94, i32 0, i32 0
  %96 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %95, align 8
  %97 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = call i32 @dev_warn(i32* %99, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %141

101:                                              ; preds = %33
  %102 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %103 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %102, i32 0, i32 0
  %104 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %103, align 8
  %105 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = call i32 @dev_warn(i32* %107, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  br label %141

109:                                              ; preds = %33
  %110 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %111 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %110, i32 0, i32 0
  %112 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %111, align 8
  %113 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = call i32 @dev_warn(i32* %115, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0))
  br label %141

117:                                              ; preds = %33
  %118 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %119 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %118, i32 0, i32 0
  %120 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %119, align 8
  %121 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @dev_warn(i32* %123, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %141

125:                                              ; preds = %33
  %126 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %127 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %126, i32 0, i32 0
  %128 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %127, align 8
  %129 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = call i32 @dev_warn(i32* %131, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  br label %141

133:                                              ; preds = %33
  %134 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %135 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %134, i32 0, i32 0
  %136 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %135, align 8
  %137 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %136, i32 0, i32 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = call i32 @dev_warn(i32* %139, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0))
  br label %141

141:                                              ; preds = %133, %125, %117, %109, %101, %93, %85, %77, %69, %61, %53, %45, %37
  br label %142

142:                                              ; preds = %141, %32
  %143 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %146 = call i32 @zfcp_erp_adapter_failed(%struct.zfcp_adapter* %143, i8* %144, %struct.zfcp_fsf_req* %145)
  br label %147

147:                                              ; preds = %142, %18
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zfcp_scsi_schedule_rports_block(%struct.zfcp_adapter*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @zfcp_erp_adapter_failed(%struct.zfcp_adapter*, i8*, %struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
