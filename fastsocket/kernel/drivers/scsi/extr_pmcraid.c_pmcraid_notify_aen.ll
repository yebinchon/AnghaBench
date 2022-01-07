; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_notify_aen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_notify_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.pmcraid_instance = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pmcraid_aen_msg = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.genl_family = type { i32 }

@GENL_HDRLEN = common dso_local global i32 0, align 4
@pmcraid_event_family = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@NLMSG_HDRLEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to allocate aen data SKB of size: %x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PMCRAID_AEN_CMD_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to copy command details\0A\00", align 1
@PMCRAID_AEN_ATTR_EVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to copy AEN attribute data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"genlmsg_end failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"error (%x) sending aen event message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_instance*, %struct.pmcraid_aen_msg*, i32)* @pmcraid_notify_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_notify_aen(%struct.pmcraid_instance* %0, %struct.pmcraid_aen_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmcraid_instance*, align 8
  %6 = alloca %struct.pmcraid_aen_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %5, align 8
  store %struct.pmcraid_aen_msg* %1, %struct.pmcraid_aen_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %14 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 16
  %19 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  %20 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MINOR(i32 %22)
  %24 = or i32 %18, %23
  %25 = load %struct.pmcraid_aen_msg*, %struct.pmcraid_aen_msg** %6, align 8
  %26 = getelementptr inbounds %struct.pmcraid_aen_msg, %struct.pmcraid_aen_msg* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.pmcraid_aen_msg*, %struct.pmcraid_aen_msg** %6, align 8
  %29 = getelementptr inbounds %struct.pmcraid_aen_msg, %struct.pmcraid_aen_msg* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @nla_total_size(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @GENL_HDRLEN, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.genl_family, %struct.genl_family* bitcast (%struct.TYPE_7__* @pmcraid_event_family to %struct.genl_family*), i32 0, i32 0), align 4
  %39 = add nsw i32 %37, %38
  %40 = add nsw i32 %36, %39
  %41 = load i32, i32* @NLMSG_HDRLEN, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call %struct.sk_buff* @genlmsg_new(i32 %43, i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %8, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %3
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (i8*, ...) @pmcraid_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %102

53:                                               ; preds = %3
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = load i32, i32* @PMCRAID_AEN_CMD_EVENT, align 4
  %56 = call i8* @genlmsg_put(%struct.sk_buff* %54, i32 0, i32 0, %struct.TYPE_7__* @pmcraid_event_family, i32 0, i32 %55)
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = call i32 (i8*, ...) @pmcraid_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = call i32 @nlmsg_free(%struct.sk_buff* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %102

65:                                               ; preds = %53
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = load i32, i32* @PMCRAID_AEN_ATTR_EVENT, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.pmcraid_aen_msg*, %struct.pmcraid_aen_msg** %6, align 8
  %70 = call i32 @nla_put(%struct.sk_buff* %66, i32 %67, i32 %68, %struct.pmcraid_aen_msg* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = call i32 (i8*, ...) @pmcraid_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = call i32 @nlmsg_free(%struct.sk_buff* %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %102

79:                                               ; preds = %65
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @genlmsg_end(%struct.sk_buff* %80, i8* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = call i32 (i8*, ...) @pmcraid_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = call i32 @nlmsg_free(%struct.sk_buff* %87)
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %4, align 4
  br label %102

90:                                               ; preds = %79
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pmcraid_event_family, i32 0, i32 0), align 4
  %93 = load i32, i32* @GFP_ATOMIC, align 4
  %94 = call i32 @genlmsg_multicast(%struct.sk_buff* %91, i32 0, i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @pmcraid_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %85, %73, %59, %48
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i32 @pmcraid_err(i8*, ...) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.pmcraid_aen_msg*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @pmcraid_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
