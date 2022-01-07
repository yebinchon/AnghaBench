; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-cdev.c_shutdown_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-cdev.c_shutdown_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_resource = type { i32 (%struct.client*, %struct.client_resource*)* }
%struct.client = type opaque
%struct.client.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @shutdown_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shutdown_resource(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.client_resource*, align 8
  %8 = alloca %struct.client.0*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.client_resource*
  store %struct.client_resource* %10, %struct.client_resource** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.client.0*
  store %struct.client.0* %12, %struct.client.0** %8, align 8
  %13 = load %struct.client_resource*, %struct.client_resource** %7, align 8
  %14 = getelementptr inbounds %struct.client_resource, %struct.client_resource* %13, i32 0, i32 0
  %15 = load i32 (%struct.client*, %struct.client_resource*)*, i32 (%struct.client*, %struct.client_resource*)** %14, align 8
  %16 = load %struct.client.0*, %struct.client.0** %8, align 8
  %17 = bitcast %struct.client.0* %16 to %struct.client*
  %18 = load %struct.client_resource*, %struct.client_resource** %7, align 8
  %19 = call i32 %15(%struct.client* %17, %struct.client_resource* %18)
  %20 = load %struct.client.0*, %struct.client.0** %8, align 8
  %21 = call i32 @client_put(%struct.client.0* %20)
  ret i32 0
}

declare dso_local i32 @client_put(%struct.client.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
