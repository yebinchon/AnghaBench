; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_find_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_find_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_client_t = type { %struct.list_head }
%struct.list_head = type { %struct.list_head* }
%struct.smscore_device_t = type { i32, %struct.list_head }
%struct.smscore_idlist_t = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smscore_client_t* (%struct.smscore_device_t*, i32, i32)* @smscore_find_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smscore_client_t* @smscore_find_client(%struct.smscore_device_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smscore_device_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smscore_client_t*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.list_head*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.smscore_client_t* null, %struct.smscore_client_t** %7, align 8
  %13 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %14 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %18 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %17, i32 0, i32 1
  store %struct.list_head* %18, %struct.list_head** %9, align 8
  %19 = load %struct.list_head*, %struct.list_head** %9, align 8
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i32 0, i32 0
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8
  store %struct.list_head* %21, %struct.list_head** %8, align 8
  br label %22

22:                                               ; preds = %72, %3
  %23 = load %struct.list_head*, %struct.list_head** %8, align 8
  %24 = load %struct.list_head*, %struct.list_head** %9, align 8
  %25 = icmp ne %struct.list_head* %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.smscore_client_t*, %struct.smscore_client_t** %7, align 8
  %28 = icmp ne %struct.smscore_client_t* %27, null
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %76

32:                                               ; preds = %30
  %33 = load %struct.list_head*, %struct.list_head** %8, align 8
  %34 = bitcast %struct.list_head* %33 to %struct.smscore_client_t*
  %35 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %34, i32 0, i32 0
  store %struct.list_head* %35, %struct.list_head** %11, align 8
  %36 = load %struct.list_head*, %struct.list_head** %11, align 8
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %36, i32 0, i32 0
  %38 = load %struct.list_head*, %struct.list_head** %37, align 8
  store %struct.list_head* %38, %struct.list_head** %12, align 8
  br label %39

39:                                               ; preds = %67, %32
  %40 = load %struct.list_head*, %struct.list_head** %12, align 8
  %41 = load %struct.list_head*, %struct.list_head** %11, align 8
  %42 = icmp ne %struct.list_head* %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load %struct.list_head*, %struct.list_head** %12, align 8
  %45 = bitcast %struct.list_head* %44 to %struct.smscore_idlist_t*
  %46 = getelementptr inbounds %struct.smscore_idlist_t, %struct.smscore_idlist_t* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load %struct.list_head*, %struct.list_head** %12, align 8
  %52 = bitcast %struct.list_head* %51 to %struct.smscore_idlist_t*
  %53 = getelementptr inbounds %struct.smscore_idlist_t, %struct.smscore_idlist_t* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load %struct.list_head*, %struct.list_head** %12, align 8
  %59 = bitcast %struct.list_head* %58 to %struct.smscore_idlist_t*
  %60 = getelementptr inbounds %struct.smscore_idlist_t, %struct.smscore_idlist_t* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57, %50
  %64 = load %struct.list_head*, %struct.list_head** %8, align 8
  %65 = bitcast %struct.list_head* %64 to %struct.smscore_client_t*
  store %struct.smscore_client_t* %65, %struct.smscore_client_t** %7, align 8
  br label %71

66:                                               ; preds = %57, %43
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.list_head*, %struct.list_head** %12, align 8
  %69 = getelementptr inbounds %struct.list_head, %struct.list_head* %68, i32 0, i32 0
  %70 = load %struct.list_head*, %struct.list_head** %69, align 8
  store %struct.list_head* %70, %struct.list_head** %12, align 8
  br label %39

71:                                               ; preds = %63, %39
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.list_head*, %struct.list_head** %8, align 8
  %74 = getelementptr inbounds %struct.list_head, %struct.list_head* %73, i32 0, i32 0
  %75 = load %struct.list_head*, %struct.list_head** %74, align 8
  store %struct.list_head* %75, %struct.list_head** %8, align 8
  br label %22

76:                                               ; preds = %30
  %77 = load %struct.smscore_device_t*, %struct.smscore_device_t** %4, align 8
  %78 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %77, i32 0, i32 0
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.smscore_client_t*, %struct.smscore_client_t** %7, align 8
  ret %struct.smscore_client_t* %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
