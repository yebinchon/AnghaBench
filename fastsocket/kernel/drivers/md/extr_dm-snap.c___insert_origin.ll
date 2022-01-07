; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___insert_origin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___insert_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.origin = type { i32, i32 }

@_origins = common dso_local global %struct.list_head* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.origin*)* @__insert_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__insert_origin(%struct.origin* %0) #0 {
  %2 = alloca %struct.origin*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.origin* %0, %struct.origin** %2, align 8
  %4 = load %struct.list_head*, %struct.list_head** @_origins, align 8
  %5 = load %struct.origin*, %struct.origin** %2, align 8
  %6 = getelementptr inbounds %struct.origin, %struct.origin* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @origin_hash(i32 %7)
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 %8
  store %struct.list_head* %9, %struct.list_head** %3, align 8
  %10 = load %struct.origin*, %struct.origin** %2, align 8
  %11 = getelementptr inbounds %struct.origin, %struct.origin* %10, i32 0, i32 0
  %12 = load %struct.list_head*, %struct.list_head** %3, align 8
  %13 = call i32 @list_add_tail(i32* %11, %struct.list_head* %12)
  ret void
}

declare dso_local i64 @origin_hash(i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
