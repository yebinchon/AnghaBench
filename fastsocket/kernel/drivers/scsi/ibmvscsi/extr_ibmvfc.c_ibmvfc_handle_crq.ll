; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_handle_crq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_handle_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_crq = type { i64, i32, i64 }
%struct.ibmvfc_host = type { i32, i32, i32, i32, i32 }
%struct.ibmvfc_event = type { i32 (%struct.ibmvfc_event*)*, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Partner initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to send init rsp. rc=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Partner initialization complete\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Unknown crq message type: %d\0A\00", align 1
@IBMVFC_NO_CRQ = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_NONE = common dso_local global i32 0, align 4
@IBMVFC_PARTITION_MIGRATED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Re-enabling adapter\0A\00", align 1
@DID_REQUEUE = common dso_local global i32 0, align 4
@IBMVFC_LINK_DOWN = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_REENABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Virtual adapter failed (rc=%d)\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_RESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Got an invalid message type 0x%02x\0A\00", align 1
@IBMVFC_ASYNC_EVENT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"Returned correlation_token 0x%08llx is invalid!\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Received duplicate correlation_token 0x%08llx!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_crq*, %struct.ibmvfc_host*)* @ibmvfc_handle_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_handle_crq(%struct.ibmvfc_crq* %0, %struct.ibmvfc_host* %1) #0 {
  %3 = alloca %struct.ibmvfc_crq*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ibmvfc_event*, align 8
  store %struct.ibmvfc_crq* %0, %struct.ibmvfc_crq** %3, align 8
  store %struct.ibmvfc_host* %1, %struct.ibmvfc_host** %4, align 8
  %7 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ibmvfc_event*
  store %struct.ibmvfc_event* %10, %struct.ibmvfc_event** %6, align 8
  %11 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %102 [
    i32 129, label %14
    i32 128, label %53
    i32 132, label %101
  ]

14:                                               ; preds = %2
  %15 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %16 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  switch i64 %17, label %44 [
    i64 131, label %18
    i64 130, label %37
  ]

18:                                               ; preds = %14
  %19 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %20 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_info(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %24 = call i64 @ibmvfc_send_crq_init_complete(%struct.ibmvfc_host* %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %29 = call i32 @ibmvfc_init_host(%struct.ibmvfc_host* %28)
  br label %36

30:                                               ; preds = %18
  %31 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %32 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %30, %27
  br label %52

37:                                               ; preds = %14
  %38 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %39 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %43 = call i32 @ibmvfc_init_host(%struct.ibmvfc_host* %42)
  br label %52

44:                                               ; preds = %14
  %45 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %46 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %49 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %44, %37, %36
  br label %164

53:                                               ; preds = %2
  %54 = load i32, i32* @IBMVFC_NO_CRQ, align 4
  %55 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %56 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %58 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %57, i32 0, i32 3
  store i32 0, i32* %58, align 4
  %59 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %60 = load i32, i32* @IBMVFC_HOST_ACTION_NONE, align 4
  %61 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %59, i32 %60)
  %62 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %63 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IBMVFC_PARTITION_MIGRATED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %53
  %68 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %69 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_info(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %73 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %75 = load i32, i32* @DID_REQUEUE, align 4
  %76 = call i32 @ibmvfc_purge_requests(%struct.ibmvfc_host* %74, i32 %75)
  %77 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %78 = load i32, i32* @IBMVFC_LINK_DOWN, align 4
  %79 = call i32 @ibmvfc_link_down(%struct.ibmvfc_host* %77, i32 %78)
  %80 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %81 = load i32, i32* @IBMVFC_HOST_ACTION_REENABLE, align 4
  %82 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %80, i32 %81)
  br label %100

83:                                               ; preds = %53
  %84 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %85 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %88 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %89)
  %91 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %92 = load i32, i32* @DID_ERROR, align 4
  %93 = call i32 @ibmvfc_purge_requests(%struct.ibmvfc_host* %91, i32 %92)
  %94 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %95 = load i32, i32* @IBMVFC_LINK_DOWN, align 4
  %96 = call i32 @ibmvfc_link_down(%struct.ibmvfc_host* %94, i32 %95)
  %97 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %98 = load i32, i32* @IBMVFC_HOST_ACTION_RESET, align 4
  %99 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %97, i32 %98)
  br label %100

100:                                              ; preds = %83, %67
  br label %164

101:                                              ; preds = %2
  br label %111

102:                                              ; preds = %2
  %103 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %104 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %107 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %109)
  br label %164

111:                                              ; preds = %101
  %112 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %113 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IBMVFC_ASYNC_EVENT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %164

118:                                              ; preds = %111
  %119 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %120 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %119, i32 0, i32 2
  %121 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %122 = call i32 @ibmvfc_valid_event(i32* %120, %struct.ibmvfc_event* %121)
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %118
  %129 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %130 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %133 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @dev_err(i32 %131, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i64 %134)
  br label %164

136:                                              ; preds = %118
  %137 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %138 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %137, i32 0, i32 3
  %139 = call i32 @atomic_read(i32* %138)
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %144 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ibmvfc_crq*, %struct.ibmvfc_crq** %3, align 8
  %147 = getelementptr inbounds %struct.ibmvfc_crq, %struct.ibmvfc_crq* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @dev_err(i32 %145, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i64 %148)
  br label %164

150:                                              ; preds = %136
  %151 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %152 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %151, i32 0, i32 2
  %153 = call i32 @del_timer(i32* %152)
  %154 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %155 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %154, i32 0, i32 1
  %156 = call i32 @list_del(i32* %155)
  %157 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %158 = call i32 @ibmvfc_trc_end(%struct.ibmvfc_event* %157)
  %159 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %160 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %159, i32 0, i32 0
  %161 = load i32 (%struct.ibmvfc_event*)*, i32 (%struct.ibmvfc_event*)** %160, align 8
  %162 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %163 = call i32 %161(%struct.ibmvfc_event* %162)
  br label %164

164:                                              ; preds = %150, %142, %128, %117, %102, %100, %52
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @ibmvfc_send_crq_init_complete(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_host(%struct.ibmvfc_host*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @ibmvfc_set_host_action(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @ibmvfc_purge_requests(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @ibmvfc_link_down(%struct.ibmvfc_host*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ibmvfc_valid_event(i32*, %struct.ibmvfc_event*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ibmvfc_trc_end(%struct.ibmvfc_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
