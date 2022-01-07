; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_insert_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_insert_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32 }
%struct.stripe_head = type { i32, i64 }
%struct.hlist_head = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"insert_hash(), stripe %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*)* @insert_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_hash(%struct.r5conf* %0, %struct.stripe_head* %1) #0 {
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca %struct.hlist_head*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %4, align 8
  %6 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %7 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %8 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call %struct.hlist_head* @stripe_hash(%struct.r5conf* %6, i64 %9)
  store %struct.hlist_head* %10, %struct.hlist_head** %5, align 8
  %11 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %12 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %16 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %15, i32 0, i32 0
  %17 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %18 = call i32 @hlist_add_head(i32* %16, %struct.hlist_head* %17)
  ret void
}

declare dso_local %struct.hlist_head* @stripe_hash(%struct.r5conf*, i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
