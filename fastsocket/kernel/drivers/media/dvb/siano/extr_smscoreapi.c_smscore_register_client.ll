; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_register_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_register_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32 }
%struct.smsclient_params_t = type { i32, i32, i32, i32, i32 }
%struct.smscore_client_t = type { i32, i32, i32, i32, %struct.smscore_device_t*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Client already exist.\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for client.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%p %d %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smscore_register_client(%struct.smscore_device_t* %0, %struct.smsclient_params_t* %1, %struct.smscore_client_t** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smscore_device_t*, align 8
  %6 = alloca %struct.smsclient_params_t*, align 8
  %7 = alloca %struct.smscore_client_t**, align 8
  %8 = alloca %struct.smscore_client_t*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %5, align 8
  store %struct.smsclient_params_t* %1, %struct.smsclient_params_t** %6, align 8
  store %struct.smscore_client_t** %2, %struct.smscore_client_t*** %7, align 8
  %9 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %10 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %11 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %14 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @smscore_find_client(%struct.smscore_device_t* %9, i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call i32 @sms_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %81

22:                                               ; preds = %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.smscore_client_t* @kzalloc(i32 32, i32 %23)
  store %struct.smscore_client_t* %24, %struct.smscore_client_t** %8, align 8
  %25 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %26 = icmp ne %struct.smscore_client_t* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = call i32 @sms_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %81

31:                                               ; preds = %22
  %32 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %33 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %32, i32 0, i32 5
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %36 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %37 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %36, i32 0, i32 4
  store %struct.smscore_device_t* %35, %struct.smscore_device_t** %37, align 8
  %38 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %39 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %42 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %44 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %47 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %49 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %52 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %54 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %53, i32 0, i32 0
  %55 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %56 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %55, i32 0, i32 1
  %57 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %58 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %57, i32 0, i32 0
  %59 = call i32 @list_add_locked(i32* %54, i32* %56, i32* %58)
  %60 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %61 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %62 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %63 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %66 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @smscore_validate_client(%struct.smscore_device_t* %60, %struct.smscore_client_t* %61, i32 %64, i32 %67)
  %69 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %70 = load %struct.smscore_client_t**, %struct.smscore_client_t*** %7, align 8
  store %struct.smscore_client_t* %69, %struct.smscore_client_t** %70, align 8
  %71 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %72 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %75 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %78 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sms_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %76, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %31, %27, %18
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @smscore_find_client(%struct.smscore_device_t*, i32, i32) #1

declare dso_local i32 @sms_err(i8*) #1

declare dso_local %struct.smscore_client_t* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_locked(i32*, i32*, i32*) #1

declare dso_local i32 @smscore_validate_client(%struct.smscore_device_t*, %struct.smscore_client_t*, i32, i32) #1

declare dso_local i32 @sms_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
