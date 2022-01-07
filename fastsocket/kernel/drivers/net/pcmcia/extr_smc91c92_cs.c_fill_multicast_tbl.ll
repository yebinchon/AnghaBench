; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_fill_multicast_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_fill_multicast_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_mc_list = type { i32*, %struct.dev_mc_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dev_mc_list*, i32*)* @fill_multicast_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_multicast_tbl(i32 %0, %struct.dev_mc_list* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dev_mc_list*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.dev_mc_list* %1, %struct.dev_mc_list** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  store %struct.dev_mc_list* %9, %struct.dev_mc_list** %7, align 8
  br label %10

10:                                               ; preds = %44, %3
  %11 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %12 = icmp ne %struct.dev_mc_list* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %4, align 4
  %16 = icmp sgt i32 %14, 0
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %48

19:                                               ; preds = %17
  %20 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %21 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @ether_crc(i32 6, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %25 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %44

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 26
  %35 = and i32 %34, 7
  %36 = shl i32 1, %35
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 29
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %36
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %32, %31
  %45 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %46 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %45, i32 0, i32 1
  %47 = load %struct.dev_mc_list*, %struct.dev_mc_list** %46, align 8
  store %struct.dev_mc_list* %47, %struct.dev_mc_list** %7, align 8
  br label %10

48:                                               ; preds = %17
  ret void
}

declare dso_local i32 @ether_crc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
