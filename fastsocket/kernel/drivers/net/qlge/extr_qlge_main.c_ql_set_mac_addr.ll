; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i8*, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Set Mac addr %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Clearing MAC address\0A\00", align 1
@SEM_MAC_ADDR_MASK = common dso_local global i32 0, align 4
@MAC_ADDR_TYPE_CAM_MAC = common dso_local global i32 0, align 4
@MAX_CQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to init mac address.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32)* @ql_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_set_mac_addr(%struct.ql_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8* %21, i8** %9, align 8
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %23 = load i32, i32* @ifup, align 4
  %24 = load i32, i32* @KERN_DEBUG, align 4
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %22, i32 %23, i32 %24, i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %41

30:                                               ; preds = %2
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memset(i8* %14, i32 0, i32 %31)
  %33 = getelementptr inbounds i8, i8* %14, i64 0
  store i8* %33, i8** %9, align 8
  %34 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %35 = load i32, i32* @ifup, align 4
  %36 = load i32, i32* @KERN_DEBUG, align 4
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %34, i32 %35, i32 %36, i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %30, %17
  %42 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %43 = load i32, i32* @SEM_MAC_ADDR_MASK, align 4
  %44 = call i32 @ql_sem_spinlock(%struct.ql_adapter* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %74

49:                                               ; preds = %41
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* @MAC_ADDR_TYPE_CAM_MAC, align 4
  %54 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MAX_CQ, align 4
  %58 = mul nsw i32 %56, %57
  %59 = call i32 @ql_set_mac_addr_reg(%struct.ql_adapter* %50, i32* %52, i32 %53, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %61 = load i32, i32* @SEM_MAC_ADDR_MASK, align 4
  %62 = call i32 @ql_sem_unlock(%struct.ql_adapter* %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %49
  %66 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %67 = load i32, i32* @ifup, align 4
  %68 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @netif_err(%struct.ql_adapter* %66, i32 %67, i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %65, %49
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %47
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ql_sem_spinlock(%struct.ql_adapter*, i32) #2

declare dso_local i32 @ql_set_mac_addr_reg(%struct.ql_adapter*, i32*, i32, i32) #2

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #2

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
