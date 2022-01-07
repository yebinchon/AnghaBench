; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___update_lacpdu_from_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___update_lacpdu_from_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i32, i32, i32, i32, i32, %struct.port_params, %struct.lacpdu }
%struct.port_params = type { i32, i32, i32, i32, i32, i32 }
%struct.lacpdu = type { i32, i8*, i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @__update_lacpdu_from_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_lacpdu_from_port(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.lacpdu*, align 8
  %4 = alloca %struct.port_params*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %5 = load %struct.port*, %struct.port** %2, align 8
  %6 = getelementptr inbounds %struct.port, %struct.port* %5, i32 0, i32 7
  store %struct.lacpdu* %6, %struct.lacpdu** %3, align 8
  %7 = load %struct.port*, %struct.port** %2, align 8
  %8 = getelementptr inbounds %struct.port, %struct.port* %7, i32 0, i32 6
  store %struct.port_params* %8, %struct.port_params** %4, align 8
  %9 = load %struct.port*, %struct.port** %2, align 8
  %10 = getelementptr inbounds %struct.port, %struct.port* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @htons(i32 %11)
  %13 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %14 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %13, i32 0, i32 11
  store i8* %12, i8** %14, align 8
  %15 = load %struct.port*, %struct.port** %2, align 8
  %16 = getelementptr inbounds %struct.port, %struct.port* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %19 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load %struct.port*, %struct.port** %2, align 8
  %21 = getelementptr inbounds %struct.port, %struct.port* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @htons(i32 %22)
  %24 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %25 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load %struct.port*, %struct.port** %2, align 8
  %27 = getelementptr inbounds %struct.port, %struct.port* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @htons(i32 %28)
  %30 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %31 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  %32 = load %struct.port*, %struct.port** %2, align 8
  %33 = getelementptr inbounds %struct.port, %struct.port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @htons(i32 %34)
  %36 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %37 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load %struct.port*, %struct.port** %2, align 8
  %39 = getelementptr inbounds %struct.port, %struct.port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %42 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.port_params*, %struct.port_params** %4, align 8
  %44 = getelementptr inbounds %struct.port_params, %struct.port_params* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @htons(i32 %45)
  %47 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %48 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.port_params*, %struct.port_params** %4, align 8
  %50 = getelementptr inbounds %struct.port_params, %struct.port_params* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %53 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.port_params*, %struct.port_params** %4, align 8
  %55 = getelementptr inbounds %struct.port_params, %struct.port_params* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @htons(i32 %56)
  %58 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %59 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.port_params*, %struct.port_params** %4, align 8
  %61 = getelementptr inbounds %struct.port_params, %struct.port_params* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @htons(i32 %62)
  %64 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %65 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.port_params*, %struct.port_params** %4, align 8
  %67 = getelementptr inbounds %struct.port_params, %struct.port_params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @htons(i32 %68)
  %70 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %71 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.port_params*, %struct.port_params** %4, align 8
  %73 = getelementptr inbounds %struct.port_params, %struct.port_params* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.lacpdu*, %struct.lacpdu** %3, align 8
  %76 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  ret void
}

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
