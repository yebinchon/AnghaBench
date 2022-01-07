; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_set_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_mac(%struct.be_adapter* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @be_cmd_get_mac_from_list(%struct.be_adapter* %18, i32* %17, i32* %9, i32* %12, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @be_cmd_pmac_del(%struct.be_adapter* %27, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %23, %4
  %33 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @be_cmd_set_mac_list(%struct.be_adapter* %33, i32* %34, i32 %38, i32 %39)
  %41 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %41)
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be_cmd_get_mac_from_list(%struct.be_adapter*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @be_cmd_pmac_del(%struct.be_adapter*, i32, i32, i32) #2

declare dso_local i32 @be_cmd_set_mac_list(%struct.be_adapter*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
