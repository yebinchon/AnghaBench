; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_probe_device_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_probe_device_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32, i32 }
%struct.ap_queue_status = type { i64 }

@ap_probe_device_type.msg = internal global [360 x i8] c"\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00X\00\00\00\00\00\00\00\00\00\00\00\00\01\00CCA-APPL   \01\01\01\00\00\00\00PK\00\00\00\00\01\1C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\B8\00\00\00\00\00\00\00\00\00\00\00\00p\00A\00\00\00\00\00\00\00T2\01\00\A0\00\00\00\00\00\00\00\00\00\00\00\00\00\B8\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00ICSF    PK\0A\00PKCS-1.27\00\11\223DUfw\88\99\00\11\223DUfw\88\99\00\11\223DUfw\88\99\00\11\223DUfw\88\99\00\11\223DUfw\88\99\00\11\223]\00[\00w\88\1E\00\00W\00\00\00\00\04\00\00O\00\00\00\03\02\00\00@\01\00\01\CE\02h-_\A9\DE\0C\F6\D2{XK\F9(h=\B4\F4\EFx\D5\BEfcB\EF\F8\FD\A4\F8\B0\8E)\C2\C9.\D8E\B8S\8CoNr\8Fl\04\9C\88\FC\1E\C5\83UW\F7\DD\FDO\116\95]", align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AP_RESPONSE_NORMAL = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@AP_DEVICE_TYPE_PCICC = common dso_local global i32 0, align 4
@AP_DEVICE_TYPE_PCICA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @ap_probe_device_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_probe_device_type(%struct.ap_device* %0) #0 {
  %2 = alloca %struct.ap_device*, align 8
  %3 = alloca %struct.ap_queue_status, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ap_queue_status, align 8
  %9 = alloca %struct.ap_queue_status, align 8
  store %struct.ap_device* %0, %struct.ap_device** %2, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @get_zeroed_page(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %91

18:                                               ; preds = %1
  %19 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %20 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @__ap_send(i32 %21, i32 84281096, i8* getelementptr inbounds ([360 x i8], [360 x i8]* @ap_probe_device_type.msg, i64 0, i64 0), i32 360, i32 0)
  %23 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %8, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = bitcast %struct.ap_queue_status* %3 to i8*
  %25 = bitcast %struct.ap_queue_status* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %3, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AP_RESPONSE_NORMAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %87

33:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 6
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = call i32 @mdelay(i32 300)
  %39 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %40 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @__ap_recv(i32 %41, i64* %4, i8* %42, i32 4096)
  %44 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %9, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = bitcast %struct.ap_queue_status* %3 to i8*
  %46 = bitcast %struct.ap_queue_status* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %3, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AP_RESPONSE_NORMAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load i64, i64* %4, align 8
  %53 = icmp eq i64 %52, 72623859790382856
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %59

55:                                               ; preds = %51, %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %34

59:                                               ; preds = %54, %34
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 6
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 134
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @AP_DEVICE_TYPE_PCICC, align 4
  %76 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %77 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %82

78:                                               ; preds = %68, %62
  %79 = load i32, i32* @AP_DEVICE_TYPE_PCICA, align 4
  %80 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %81 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %74
  store i32 0, i32* %6, align 4
  br label %86

83:                                               ; preds = %59
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %83, %82
  br label %87

87:                                               ; preds = %86, %30
  %88 = load i8*, i8** %5, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = call i32 @free_page(i64 %89)
  br label %91

91:                                               ; preds = %87, %15
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @__ap_send(i32, i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @__ap_recv(i32, i64*, i8*, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
