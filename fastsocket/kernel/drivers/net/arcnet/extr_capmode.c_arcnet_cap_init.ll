; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_capmode.c_arcnet_cap_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_capmode.c_arcnet_cap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arc_proto_map = common dso_local global i32** null, align 8
@arc_proto_default = common dso_local global i32* null, align 8
@capmode_proto = common dso_local global i32 0, align 4
@arc_bcast_proto = common dso_local global i32* null, align 8
@arc_raw_proto = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @arcnet_cap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcnet_cap_init() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %19, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp sle i32 %3, 8
  br i1 %4, label %5, label %22

5:                                                ; preds = %2
  %6 = load i32**, i32*** @arc_proto_map, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32*, i32** %6, i64 %8
  %10 = load i32*, i32** %9, align 8
  %11 = load i32*, i32** @arc_proto_default, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = load i32**, i32*** @arc_proto_map, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  store i32* @capmode_proto, i32** %17, align 8
  br label %18

18:                                               ; preds = %13, %5
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %2

22:                                               ; preds = %2
  %23 = load i32*, i32** @arc_bcast_proto, align 8
  %24 = load i32*, i32** @arc_proto_default, align 8
  %25 = icmp eq i32* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32* @capmode_proto, i32** @arc_bcast_proto, align 8
  br label %27

27:                                               ; preds = %26, %22
  store i32* @capmode_proto, i32** @arc_proto_default, align 8
  store i32* @capmode_proto, i32** @arc_raw_proto, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
