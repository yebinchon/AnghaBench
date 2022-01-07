; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_client.c_nouveau_client_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_client.c_nouveau_client_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_client = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*)* @nouveau_client_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_client_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nouveau_client*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %4 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %5 = bitcast %struct.nouveau_object* %4 to i8*
  %6 = bitcast i8* %5 to %struct.nouveau_client*
  store %struct.nouveau_client* %6, %struct.nouveau_client** %3, align 8
  %7 = load %struct.nouveau_client*, %struct.nouveau_client** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %7, i32 0, i32 2
  %9 = call i32 @nouveau_object_ref(i32* null, i32* %8)
  %10 = load %struct.nouveau_client*, %struct.nouveau_client** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @nouveau_handle_destroy(i32 %12)
  %14 = load %struct.nouveau_client*, %struct.nouveau_client** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %14, i32 0, i32 0
  %16 = call i32 @nouveau_namedb_destroy(i32* %15)
  ret void
}

declare dso_local i32 @nouveau_object_ref(i32*, i32*) #1

declare dso_local i32 @nouveau_handle_destroy(i32) #1

declare dso_local i32 @nouveau_namedb_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
