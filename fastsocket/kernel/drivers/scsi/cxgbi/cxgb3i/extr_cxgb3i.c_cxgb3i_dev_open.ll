; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_cxgb3i_dev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_cxgb3i_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.cxgbi_device = type { i32, i32, i32, i32*, %struct.TYPE_4__**, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.t3cdev* }
%struct.TYPE_4__ = type { i32 }
%struct.adapter = type { %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"0x%p, updating.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"device 0x%p register failed.\0A\00", align 1
@CXGBI_FLAG_DEV_T3 = common dso_local global i32 0, align 4
@CXGBI_FLAG_IPV4_SET = common dso_local global i32 0, align 4
@NMTUS = common dso_local global i32 0, align 4
@cxgb3i_snd_win = common dso_local global i32 0, align 4
@cxgb3i_rcv_win = common dso_local global i32 0, align 4
@cxgb3i_rx_credit_thres = common dso_local global i32 0, align 4
@CXGB3I_TX_HEADER_LEN = common dso_local global i32 0, align 4
@t3_ddp_cleanup = common dso_local global i32 0, align 4
@cxgb3i_iscsi_transport = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"0x%p ddp init failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0x%p offload init failed\0A\00", align 1
@CXGB3I_MAX_LUN = common dso_local global i32 0, align 4
@CXGBI_MAX_CONN = common dso_local global i32 0, align 4
@cxgb3i_host_template = common dso_local global i32 0, align 4
@cxgb3i_stt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"cdev 0x%p, f 0x%x, t3dev 0x%p open, err %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t3cdev*)* @cxgb3i_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb3i_dev_open(%struct.t3cdev* %0) #0 {
  %2 = alloca %struct.t3cdev*, align 8
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.t3cdev* %0, %struct.t3cdev** %2, align 8
  %7 = load %struct.t3cdev*, %struct.t3cdev** %2, align 8
  %8 = call %struct.cxgbi_device* @cxgbi_device_find_by_lldev(%struct.t3cdev* %7)
  store %struct.cxgbi_device* %8, %struct.cxgbi_device** %3, align 8
  %9 = load %struct.t3cdev*, %struct.t3cdev** %2, align 8
  %10 = call %struct.adapter* @tdev2adap(%struct.t3cdev* %9)
  store %struct.adapter* %10, %struct.adapter** %4, align 8
  %11 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %12 = icmp ne %struct.cxgbi_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %15 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %14)
  br label %148

16:                                               ; preds = %1
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.cxgbi_device* @cxgbi_device_register(i32 0, i32 %20)
  store %struct.cxgbi_device* %21, %struct.cxgbi_device** %3, align 8
  %22 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %23 = icmp ne %struct.cxgbi_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.t3cdev*, %struct.t3cdev** %2, align 8
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.t3cdev* %25)
  br label %148

27:                                               ; preds = %16
  %28 = load i32, i32* @CXGBI_FLAG_DEV_T3, align 4
  %29 = load i32, i32* @CXGBI_FLAG_IPV4_SET, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %32 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.t3cdev*, %struct.t3cdev** %2, align 8
  %34 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %35 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %34, i32 0, i32 14
  store %struct.t3cdev* %33, %struct.t3cdev** %35, align 8
  %36 = load %struct.adapter*, %struct.adapter** %4, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %40 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %39, i32 0, i32 13
  store i32 %38, i32* %40, align 4
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %45 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %4, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %51 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %57 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @NMTUS, align 4
  %59 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %60 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %59, i32 0, i32 11
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @cxgb3i_snd_win, align 4
  %62 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %63 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @cxgb3i_rcv_win, align 4
  %65 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %66 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @cxgb3i_rx_credit_thres, align 4
  %68 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %69 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @CXGB3I_TX_HEADER_LEN, align 4
  %71 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %72 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %74 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %73, i32 0, i32 2
  store i32 4, i32* %74, align 8
  %75 = load i32, i32* @t3_ddp_cleanup, align 4
  %76 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %77 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %79 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %78, i32 0, i32 5
  store i32* @cxgb3i_iscsi_transport, i32** %79, align 8
  %80 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %81 = call i32 @cxgb3i_ddp_init(%struct.cxgbi_device* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %27
  %85 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %86 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_device* %85)
  br label %145

87:                                               ; preds = %27
  %88 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %89 = call i32 @cxgb3i_ofld_init(%struct.cxgbi_device* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %94 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_device* %93)
  br label %145

95:                                               ; preds = %87
  %96 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %97 = load i32, i32* @CXGB3I_MAX_LUN, align 4
  %98 = load i32, i32* @CXGBI_MAX_CONN, align 4
  %99 = load i32, i32* @cxgb3i_stt, align 4
  %100 = call i32 @cxgbi_hbas_add(%struct.cxgbi_device* %96, i32 %97, i32 %98, i32* @cxgb3i_host_template, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %145

104:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %128, %104
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %108 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %105
  %112 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %113 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @cxgb3i_get_private_ipv4addr(i32 %118)
  %120 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %121 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %120, i32 0, i32 4
  %122 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %122, i64 %124
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 %119, i32* %127, align 4
  br label %128

128:                                              ; preds = %111
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %105

131:                                              ; preds = %105
  %132 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %133 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %134 = icmp ne %struct.cxgbi_device* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %137 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  br label %140

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %135
  %141 = phi i32 [ %138, %135 ], [ 0, %139 ]
  %142 = load %struct.t3cdev*, %struct.t3cdev** %2, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.cxgbi_device* %132, i32 %141, %struct.t3cdev* %142, i32 %143)
  br label %148

145:                                              ; preds = %103, %92, %84
  %146 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %147 = call i32 @cxgbi_device_unregister(%struct.cxgbi_device* %146)
  br label %148

148:                                              ; preds = %145, %140, %24, %13
  ret void
}

declare dso_local %struct.cxgbi_device* @cxgbi_device_find_by_lldev(%struct.t3cdev*) #1

declare dso_local %struct.adapter* @tdev2adap(%struct.t3cdev*) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_device*, ...) #1

declare dso_local %struct.cxgbi_device* @cxgbi_device_register(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, %struct.t3cdev*) #1

declare dso_local i32 @cxgb3i_ddp_init(%struct.cxgbi_device*) #1

declare dso_local i32 @cxgb3i_ofld_init(%struct.cxgbi_device*) #1

declare dso_local i32 @cxgbi_hbas_add(%struct.cxgbi_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @cxgb3i_get_private_ipv4addr(i32) #1

declare dso_local i32 @cxgbi_device_unregister(%struct.cxgbi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
