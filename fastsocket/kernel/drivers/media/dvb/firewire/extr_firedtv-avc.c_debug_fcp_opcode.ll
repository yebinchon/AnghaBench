; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_debug_fcp_opcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_debug_fcp_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@avc_debug = common dso_local global i32 0, align 4
@AVC_DEBUG_READ_DESCRIPTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ReadDescriptor\00", align 1
@AVC_DEBUG_DSIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"DirectSelectInfo.Type\00", align 1
@AVC_DEBUG_DSD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"DirectSelectData\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@SFE_VENDOR_DE_COMPANYID_0 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_1 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Vendor/Unknown\00", align 1
@AVC_DEBUG_REGISTER_REMOTE_CONTROL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"RegisterRC\00", align 1
@AVC_DEBUG_LNB_CONTROL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"LNBControl\00", align 1
@AVC_DEBUG_TUNE_QPSK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"TuneQPSK\00", align 1
@AVC_DEBUG_TUNE_QPSK2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"TuneQPSK2\00", align 1
@AVC_DEBUG_HOST2CA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"Host2CA\00", align 1
@AVC_DEBUG_CA2HOST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"CA2Host\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*, i32)* @debug_fcp_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debug_fcp_opcode(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %31 [
    i32 134, label %9
    i32 135, label %10
    i32 136, label %17
    i32 137, label %24
  ]

9:                                                ; preds = %3
  br label %32

10:                                               ; preds = %3
  %11 = load i32, i32* @avc_debug, align 4
  %12 = load i32, i32* @AVC_DEBUG_READ_DESCRIPTOR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* null
  store i8* %16, i8** %4, align 8
  br label %101

17:                                               ; preds = %3
  %18 = load i32, i32* @avc_debug, align 4
  %19 = load i32, i32* @AVC_DEBUG_DSIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* null
  store i8* %23, i8** %4, align 8
  br label %101

24:                                               ; preds = %3
  %25 = load i32, i32* @avc_debug, align 4
  %26 = load i32, i32* @AVC_DEBUG_DSD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* null
  store i8* %30, i8** %4, align 8
  br label %101

31:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %101

32:                                               ; preds = %9
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 7
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_0, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_1, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_2, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %41, %35, %32
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %101

54:                                               ; preds = %47
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %100 [
    i32 130, label %58
    i32 131, label %65
    i32 129, label %72
    i32 128, label %79
    i32 132, label %86
    i32 133, label %93
  ]

58:                                               ; preds = %54
  %59 = load i32, i32* @avc_debug, align 4
  %60 = load i32, i32* @AVC_DEBUG_REGISTER_REMOTE_CONTROL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* null
  store i8* %64, i8** %4, align 8
  br label %101

65:                                               ; preds = %54
  %66 = load i32, i32* @avc_debug, align 4
  %67 = load i32, i32* @AVC_DEBUG_LNB_CONTROL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* null
  store i8* %71, i8** %4, align 8
  br label %101

72:                                               ; preds = %54
  %73 = load i32, i32* @avc_debug, align 4
  %74 = load i32, i32* @AVC_DEBUG_TUNE_QPSK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* null
  store i8* %78, i8** %4, align 8
  br label %101

79:                                               ; preds = %54
  %80 = load i32, i32* @avc_debug, align 4
  %81 = load i32, i32* @AVC_DEBUG_TUNE_QPSK2, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* null
  store i8* %85, i8** %4, align 8
  br label %101

86:                                               ; preds = %54
  %87 = load i32, i32* @avc_debug, align 4
  %88 = load i32, i32* @AVC_DEBUG_HOST2CA, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* null
  store i8* %92, i8** %4, align 8
  br label %101

93:                                               ; preds = %54
  %94 = load i32, i32* @avc_debug, align 4
  %95 = load i32, i32* @AVC_DEBUG_CA2HOST, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* null
  store i8* %99, i8** %4, align 8
  br label %101

100:                                              ; preds = %54
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %101

101:                                              ; preds = %100, %93, %86, %79, %72, %65, %58, %53, %31, %24, %17, %10
  %102 = load i8*, i8** %4, align 8
  ret i8* %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
