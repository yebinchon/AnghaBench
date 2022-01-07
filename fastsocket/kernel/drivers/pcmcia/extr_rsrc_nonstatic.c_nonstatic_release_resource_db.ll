; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_release_resource_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_release_resource_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.socket_data* }
%struct.socket_data = type { %struct.resource_map, %struct.resource_map }
%struct.resource_map = type { %struct.resource_map* }

@rsrc_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_socket*)* @nonstatic_release_resource_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nonstatic_release_resource_db(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca %struct.socket_data*, align 8
  %4 = alloca %struct.resource_map*, align 8
  %5 = alloca %struct.resource_map*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %7 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 0
  %8 = load %struct.socket_data*, %struct.socket_data** %7, align 8
  store %struct.socket_data* %8, %struct.socket_data** %3, align 8
  %9 = call i32 @mutex_lock(i32* @rsrc_mutex)
  %10 = load %struct.socket_data*, %struct.socket_data** %3, align 8
  %11 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %11, i32 0, i32 0
  %13 = load %struct.resource_map*, %struct.resource_map** %12, align 8
  store %struct.resource_map* %13, %struct.resource_map** %4, align 8
  br label %14

14:                                               ; preds = %25, %1
  %15 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %16 = load %struct.socket_data*, %struct.socket_data** %3, align 8
  %17 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %16, i32 0, i32 1
  %18 = icmp ne %struct.resource_map* %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %21 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %20, i32 0, i32 0
  %22 = load %struct.resource_map*, %struct.resource_map** %21, align 8
  store %struct.resource_map* %22, %struct.resource_map** %5, align 8
  %23 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %24 = call i32 @kfree(%struct.resource_map* %23)
  br label %25

25:                                               ; preds = %19
  %26 = load %struct.resource_map*, %struct.resource_map** %5, align 8
  store %struct.resource_map* %26, %struct.resource_map** %4, align 8
  br label %14

27:                                               ; preds = %14
  %28 = load %struct.socket_data*, %struct.socket_data** %3, align 8
  %29 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %29, i32 0, i32 0
  %31 = load %struct.resource_map*, %struct.resource_map** %30, align 8
  store %struct.resource_map* %31, %struct.resource_map** %4, align 8
  br label %32

32:                                               ; preds = %43, %27
  %33 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %34 = load %struct.socket_data*, %struct.socket_data** %3, align 8
  %35 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %34, i32 0, i32 0
  %36 = icmp ne %struct.resource_map* %33, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %39 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %38, i32 0, i32 0
  %40 = load %struct.resource_map*, %struct.resource_map** %39, align 8
  store %struct.resource_map* %40, %struct.resource_map** %5, align 8
  %41 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %42 = call i32 @kfree(%struct.resource_map* %41)
  br label %43

43:                                               ; preds = %37
  %44 = load %struct.resource_map*, %struct.resource_map** %5, align 8
  store %struct.resource_map* %44, %struct.resource_map** %4, align 8
  br label %32

45:                                               ; preds = %32
  %46 = call i32 @mutex_unlock(i32* @rsrc_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.resource_map*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
