; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cistpl.c_release_cis_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cistpl.c_release_cis_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)* }

@MAP_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_cis_mem(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %4 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MAP_ACTIVE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = load i32, i32* @MAP_ACTIVE, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %12
  store i32 %17, i32* %15, align 8
  %18 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %19 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)** %21, align 8
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 1
  %26 = call i32 %22(%struct.pcmcia_socket* %23, %struct.TYPE_4__* %25)
  %27 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %28 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %10
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %34 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @release_resource(i32* %36)
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %39 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %44 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %32, %10
  %47 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %48 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @iounmap(i32* %49)
  %51 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %52 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %46, %1
  ret void
}

declare dso_local i32 @release_resource(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
