; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_talk_to_blkback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_talk_to_blkback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.blkfront_info = type { i32, i32 }
%struct.xenbus_transaction = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ring-ref\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"writing ring-ref\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"writing event-channel\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@XEN_IO_PROTO_ABI_NATIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"writing protocol\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@XenbusStateInitialised = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.blkfront_info*)* @talk_to_blkback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talk_to_blkback(%struct.xenbus_device* %0, %struct.blkfront_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.blkfront_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xenbus_transaction, align 4
  %8 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.blkfront_info* %1, %struct.blkfront_info** %5, align 8
  store i8* null, i8** %6, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %10 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %11 = call i32 @setup_blkring(%struct.xenbus_device* %9, %struct.blkfront_info* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %96

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %72, %15
  %17 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %21, i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %93

24:                                               ; preds = %16
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %26 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %29 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xenbus_printf(i32 %32, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %81

37:                                               ; preds = %24
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %39 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %42 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xenbus_printf(i32 %45, i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %81

50:                                               ; preds = %37
  %51 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %52 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @XEN_IO_PROTO_ABI_NATIVE, align 4
  %55 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @xenbus_printf(i32 %56, i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %81

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @xenbus_transaction_end(i32 %63, i32 0)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @EAGAIN, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %16

73:                                               ; preds = %67
  %74 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %74, i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %93

77:                                               ; preds = %61
  %78 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %79 = load i32, i32* @XenbusStateInitialised, align 4
  %80 = call i32 @xenbus_switch_state(%struct.xenbus_device* %78, i32 %79)
  store i32 0, i32* %3, align 4
  br label %98

81:                                               ; preds = %60, %49, %36
  %82 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @xenbus_transaction_end(i32 %83, i32 1)
  %85 = load i8*, i8** %6, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %88, i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %87, %81
  br label %93

93:                                               ; preds = %92, %73, %20
  %94 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %95 = call i32 @blkif_free(%struct.blkfront_info* %94, i32 0)
  br label %96

96:                                               ; preds = %93, %14
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %77
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @setup_blkring(%struct.xenbus_device*, %struct.blkfront_info*) #1

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, ...) #1

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @blkif_free(%struct.blkfront_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
