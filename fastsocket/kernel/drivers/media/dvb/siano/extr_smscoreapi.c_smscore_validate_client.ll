; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_validate_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_validate_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32 }
%struct.smscore_client_t = type { i32 }
%struct.smscore_idlist_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"bad parameter.\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"The msg ID already registered to another client.\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Can't allocate memory for client id.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*, %struct.smscore_client_t*, i32, i32)* @smscore_validate_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_validate_client(%struct.smscore_device_t* %0, %struct.smscore_client_t* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smscore_device_t*, align 8
  %7 = alloca %struct.smscore_client_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.smscore_idlist_t*, align 8
  %11 = alloca %struct.smscore_client_t*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %6, align 8
  store %struct.smscore_client_t* %1, %struct.smscore_client_t** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.smscore_client_t*, %struct.smscore_client_t** %7, align 8
  %13 = icmp ne %struct.smscore_client_t* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = call i32 @sms_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %57

18:                                               ; preds = %4
  %19 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.smscore_client_t* @smscore_find_client(%struct.smscore_device_t* %19, i32 %20, i32 %21)
  store %struct.smscore_client_t* %22, %struct.smscore_client_t** %11, align 8
  %23 = load %struct.smscore_client_t*, %struct.smscore_client_t** %11, align 8
  %24 = load %struct.smscore_client_t*, %struct.smscore_client_t** %7, align 8
  %25 = icmp eq %struct.smscore_client_t* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %57

27:                                               ; preds = %18
  %28 = load %struct.smscore_client_t*, %struct.smscore_client_t** %11, align 8
  %29 = icmp ne %struct.smscore_client_t* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 @sms_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EEXIST, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %57

34:                                               ; preds = %27
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.smscore_idlist_t* @kzalloc(i32 12, i32 %35)
  store %struct.smscore_idlist_t* %36, %struct.smscore_idlist_t** %10, align 8
  %37 = load %struct.smscore_idlist_t*, %struct.smscore_idlist_t** %10, align 8
  %38 = icmp ne %struct.smscore_idlist_t* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = call i32 @sms_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %57

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.smscore_idlist_t*, %struct.smscore_idlist_t** %10, align 8
  %46 = getelementptr inbounds %struct.smscore_idlist_t, %struct.smscore_idlist_t* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.smscore_idlist_t*, %struct.smscore_idlist_t** %10, align 8
  %49 = getelementptr inbounds %struct.smscore_idlist_t, %struct.smscore_idlist_t* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.smscore_idlist_t*, %struct.smscore_idlist_t** %10, align 8
  %51 = getelementptr inbounds %struct.smscore_idlist_t, %struct.smscore_idlist_t* %50, i32 0, i32 2
  %52 = load %struct.smscore_client_t*, %struct.smscore_client_t** %7, align 8
  %53 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %52, i32 0, i32 0
  %54 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %55 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %54, i32 0, i32 0
  %56 = call i32 @list_add_locked(i32* %51, i32* %53, i32* %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %43, %39, %30, %26, %14
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @sms_err(i8*) #1

declare dso_local %struct.smscore_client_t* @smscore_find_client(%struct.smscore_device_t*, i32, i32) #1

declare dso_local %struct.smscore_idlist_t* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_locked(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
