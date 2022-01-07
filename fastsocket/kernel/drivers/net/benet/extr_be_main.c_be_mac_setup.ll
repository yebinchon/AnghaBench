; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_mac_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_mac_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_mac_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mac_setup(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %8 = load i32, i32* @ETH_ALEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @is_zero_ether_addr(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %21 = call i32 @be_cmd_get_perm_mac(%struct.be_adapter* %20, i32* %11)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %59

26:                                               ; preds = %19
  %27 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32* %31, i32* %11, i32 %32)
  %34 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = call i32 @memcpy(i32* %38, i32* %11, i32 %39)
  br label %49

41:                                               ; preds = %1
  %42 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32* %11, i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %26
  %50 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %51 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = call i32 @be_cmd_pmac_add(%struct.be_adapter* %50, i32* %11, i32 %53, i32* %57, i32 0)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %49, %24
  %60 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_zero_ether_addr(i32*) #2

declare dso_local i32 @be_cmd_get_perm_mac(%struct.be_adapter*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @be_cmd_pmac_add(%struct.be_adapter*, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
