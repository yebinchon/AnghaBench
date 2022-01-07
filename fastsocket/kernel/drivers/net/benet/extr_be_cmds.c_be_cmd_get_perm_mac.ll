; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_perm_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_perm_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_perm_mac(%struct.be_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @ETH_ALEN, align 4
  %9 = call i32 @memset(i32* %7, i32 0, i32 %8)
  %10 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %11 = call i64 @BEx_chip(%struct.be_adapter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = call i64 @be_physfn(%struct.be_adapter* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @be_cmd_mac_addr_query(%struct.be_adapter* %18, i32* %19, i32 1, i32 0, i32 0)
  store i32 %20, i32* %5, align 4
  br label %28

21:                                               ; preds = %13
  %22 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be_cmd_mac_addr_query(%struct.be_adapter* %22, i32* %23, i32 0, i32 %26, i32 0)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %17
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @be_cmd_get_mac_from_list(%struct.be_adapter* %30, i32* %31, i32* %6, i32* null, i32 0)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %28
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_mac_addr_query(%struct.be_adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_get_mac_from_list(%struct.be_adapter*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
