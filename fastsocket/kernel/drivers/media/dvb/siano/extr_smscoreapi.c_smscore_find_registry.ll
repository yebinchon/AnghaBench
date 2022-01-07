; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_find_registry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_find_registry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.smscore_registry_entry_t = type { i32, i32, i32 }

@g_smscore_registrylock = common dso_local global i32 0, align 4
@g_smscore_registry = common dso_local global %struct.list_head zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@default_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to create smscore_registry.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smscore_registry_entry_t* (i8*)* @smscore_find_registry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smscore_registry_entry_t* @smscore_find_registry(i8* %0) #0 {
  %2 = alloca %struct.smscore_registry_entry_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.smscore_registry_entry_t*, align 8
  %5 = alloca %struct.list_head*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i32 @kmutex_lock(i32* @g_smscore_registrylock)
  %7 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @g_smscore_registry, i32 0, i32 0), align 8
  store %struct.list_head* %7, %struct.list_head** %5, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.list_head*, %struct.list_head** %5, align 8
  %10 = icmp ne %struct.list_head* %9, @g_smscore_registry
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load %struct.list_head*, %struct.list_head** %5, align 8
  %13 = bitcast %struct.list_head* %12 to %struct.smscore_registry_entry_t*
  store %struct.smscore_registry_entry_t* %13, %struct.smscore_registry_entry_t** %4, align 8
  %14 = load %struct.smscore_registry_entry_t*, %struct.smscore_registry_entry_t** %4, align 8
  %15 = getelementptr inbounds %struct.smscore_registry_entry_t, %struct.smscore_registry_entry_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcmp(i32 %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = call i32 @kmutex_unlock(i32* @g_smscore_registrylock)
  %22 = load %struct.smscore_registry_entry_t*, %struct.smscore_registry_entry_t** %4, align 8
  store %struct.smscore_registry_entry_t* %22, %struct.smscore_registry_entry_t** %2, align 8
  br label %50

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.list_head*, %struct.list_head** %5, align 8
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i32 0, i32 0
  %27 = load %struct.list_head*, %struct.list_head** %26, align 8
  store %struct.list_head* %27, %struct.list_head** %5, align 8
  br label %8

28:                                               ; preds = %8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.smscore_registry_entry_t* @kmalloc(i32 12, i32 %29)
  store %struct.smscore_registry_entry_t* %30, %struct.smscore_registry_entry_t** %4, align 8
  %31 = load %struct.smscore_registry_entry_t*, %struct.smscore_registry_entry_t** %4, align 8
  %32 = icmp ne %struct.smscore_registry_entry_t* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i32, i32* @default_mode, align 4
  %35 = load %struct.smscore_registry_entry_t*, %struct.smscore_registry_entry_t** %4, align 8
  %36 = getelementptr inbounds %struct.smscore_registry_entry_t, %struct.smscore_registry_entry_t* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.smscore_registry_entry_t*, %struct.smscore_registry_entry_t** %4, align 8
  %38 = getelementptr inbounds %struct.smscore_registry_entry_t, %struct.smscore_registry_entry_t* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strcpy(i32 %39, i8* %40)
  %42 = load %struct.smscore_registry_entry_t*, %struct.smscore_registry_entry_t** %4, align 8
  %43 = getelementptr inbounds %struct.smscore_registry_entry_t, %struct.smscore_registry_entry_t* %42, i32 0, i32 0
  %44 = call i32 @list_add(i32* %43, %struct.list_head* @g_smscore_registry)
  br label %47

45:                                               ; preds = %28
  %46 = call i32 @sms_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %33
  %48 = call i32 @kmutex_unlock(i32* @g_smscore_registrylock)
  %49 = load %struct.smscore_registry_entry_t*, %struct.smscore_registry_entry_t** %4, align 8
  store %struct.smscore_registry_entry_t* %49, %struct.smscore_registry_entry_t** %2, align 8
  br label %50

50:                                               ; preds = %47, %20
  %51 = load %struct.smscore_registry_entry_t*, %struct.smscore_registry_entry_t** %2, align 8
  ret %struct.smscore_registry_entry_t* %51
}

declare dso_local i32 @kmutex_lock(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @kmutex_unlock(i32*) #1

declare dso_local %struct.smscore_registry_entry_t* @kmalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @sms_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
