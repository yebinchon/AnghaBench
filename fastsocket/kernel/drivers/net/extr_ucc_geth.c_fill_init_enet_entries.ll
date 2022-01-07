; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_fill_init_enet_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_fill_init_enet_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_geth_private = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"fill_init_enet_entries: Can not get SNUM.\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"fill_init_enet_entries: Can not allocate DPRAM memory.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENET_INIT_PARAM_SNUM_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_geth_private*, i64*, i64, i64, i64, i32, i32)* @fill_init_enet_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_init_enet_entries(%struct.ucc_geth_private* %0, i64* %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucc_geth_private*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ucc_geth_private* %0, %struct.ucc_geth_private** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 0, i64* %17, align 8
  br label %19

19:                                               ; preds = %73, %7
  %20 = load i64, i64* %17, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %19
  %24 = call i32 (...) @qe_get_snum()
  store i32 %24, i32* %18, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %9, align 8
  %28 = call i64 @netif_msg_ifup(%struct.ucc_geth_private* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @ugeth_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %8, align 4
  br label %77

34:                                               ; preds = %23
  %35 = load i64, i64* %17, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i64 0, i64* %16, align 8
  br label %61

41:                                               ; preds = %37, %34
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @qe_muram_alloc(i64 %42, i64 %43)
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i64 @IS_ERR_VALUE(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %9, align 8
  %50 = call i64 @netif_msg_ifup(%struct.ucc_geth_private* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @ugeth_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @qe_put_snum(i64 %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %77

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @ENET_INIT_PARAM_SNUM_SHIFT, align 8
  %65 = shl i64 %63, %64
  %66 = load i64, i64* %16, align 8
  %67 = or i64 %65, %66
  %68 = load i32, i32* %14, align 4
  %69 = zext i32 %68 to i64
  %70 = or i64 %67, %69
  %71 = load i64*, i64** %10, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %10, align 8
  store i64 %70, i64* %71, align 8
  br label %73

73:                                               ; preds = %61
  %74 = load i64, i64* %17, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %17, align 8
  br label %19

76:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %54, %32
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @qe_get_snum(...) #1

declare dso_local i64 @netif_msg_ifup(%struct.ucc_geth_private*) #1

declare dso_local i32 @ugeth_err(i8*) #1

declare dso_local i64 @qe_muram_alloc(i64, i64) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @qe_put_snum(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
