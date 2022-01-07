; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___choose_matched.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___choose_matched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacpdu = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.port = type { i64, i64, i64, i64, i32, i32, i32 }

@AD_STATE_AGGREGATION = common dso_local global i32 0, align 4
@AD_PORT_MATCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacpdu*, %struct.port*)* @__choose_matched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__choose_matched(%struct.lacpdu* %0, %struct.port* %1) #0 {
  %3 = alloca %struct.lacpdu*, align 8
  %4 = alloca %struct.port*, align 8
  store %struct.lacpdu* %0, %struct.lacpdu** %3, align 8
  store %struct.port* %1, %struct.port** %4, align 8
  %5 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %6 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @ntohs(i32 %7)
  %9 = load %struct.port*, %struct.port** %4, align 8
  %10 = getelementptr inbounds %struct.port, %struct.port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %2
  %14 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %15 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ntohs(i32 %16)
  %18 = load %struct.port*, %struct.port** %4, align 8
  %19 = getelementptr inbounds %struct.port, %struct.port* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %13
  %23 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %24 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %23, i32 0, i32 4
  %25 = load %struct.port*, %struct.port** %4, align 8
  %26 = getelementptr inbounds %struct.port, %struct.port* %25, i32 0, i32 6
  %27 = call i32 @MAC_ADDRESS_COMPARE(i32* %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %22
  %30 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %31 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ntohs(i32 %32)
  %34 = load %struct.port*, %struct.port** %4, align 8
  %35 = getelementptr inbounds %struct.port, %struct.port* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %29
  %39 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %40 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ntohs(i32 %41)
  %43 = load %struct.port*, %struct.port** %4, align 8
  %44 = getelementptr inbounds %struct.port, %struct.port* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %38
  %48 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %49 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AD_STATE_AGGREGATION, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.port*, %struct.port** %4, align 8
  %54 = getelementptr inbounds %struct.port, %struct.port* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AD_STATE_AGGREGATION, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %52, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %47, %38, %29, %22, %13, %2
  %60 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %61 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AD_STATE_AGGREGATION, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59, %47
  %67 = load i32, i32* @AD_PORT_MATCHED, align 4
  %68 = load %struct.port*, %struct.port** %4, align 8
  %69 = getelementptr inbounds %struct.port, %struct.port* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %79

72:                                               ; preds = %59
  %73 = load i32, i32* @AD_PORT_MATCHED, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.port*, %struct.port** %4, align 8
  %76 = getelementptr inbounds %struct.port, %struct.port* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %66
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @MAC_ADDRESS_COMPARE(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
