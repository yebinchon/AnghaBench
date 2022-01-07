; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_estatus_cache_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_ghes.c_ghes_estatus_cache_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ghes_estatus_cache = type { i32 }

@ghes_estatus_pool = common dso_local global i32 0, align 4
@ghes_estatus_cache_alloced = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ghes_estatus_cache*)* @ghes_estatus_cache_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghes_estatus_cache_free(%struct.ghes_estatus_cache* %0) #0 {
  %2 = alloca %struct.ghes_estatus_cache*, align 8
  %3 = alloca i32, align 4
  store %struct.ghes_estatus_cache* %0, %struct.ghes_estatus_cache** %2, align 8
  %4 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %2, align 8
  %5 = call i32 @GHES_ESTATUS_FROM_CACHE(%struct.ghes_estatus_cache* %4)
  %6 = call i32 @apei_estatus_len(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @GHES_ESTATUS_CACHE_LEN(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @ghes_estatus_pool, align 4
  %10 = load %struct.ghes_estatus_cache*, %struct.ghes_estatus_cache** %2, align 8
  %11 = ptrtoint %struct.ghes_estatus_cache* %10 to i64
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @gen_pool_free(i32 %9, i64 %11, i32 %12)
  %14 = call i32 @atomic_dec(i32* @ghes_estatus_cache_alloced)
  ret void
}

declare dso_local i32 @apei_estatus_len(i32) #1

declare dso_local i32 @GHES_ESTATUS_FROM_CACHE(%struct.ghes_estatus_cache*) #1

declare dso_local i32 @GHES_ESTATUS_CACHE_LEN(i32) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
