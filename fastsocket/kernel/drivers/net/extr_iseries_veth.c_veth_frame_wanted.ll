; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_frame_wanted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_frame_wanted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_port = type { i32, i32, i32*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.veth_port*, i32)* @veth_frame_wanted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_frame_wanted(%struct.veth_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.veth_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.veth_port* %0, %struct.veth_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.veth_port*, %struct.veth_port** %4, align 8
  %11 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp eq i64 %16, -65536
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  store i32 1, i32* %3, align 4
  br label %58

19:                                               ; preds = %14
  %20 = load %struct.veth_port*, %struct.veth_port** %4, align 8
  %21 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %20, i32 0, i32 3
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @read_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.veth_port*, %struct.veth_port** %4, align 8
  %25 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %52

29:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.veth_port*, %struct.veth_port** %4, align 8
  %33 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.veth_port*, %struct.veth_port** %4, align 8
  %38 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %51

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %30

51:                                               ; preds = %46, %30
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.veth_port*, %struct.veth_port** %4, align 8
  %54 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %53, i32 0, i32 3
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @read_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
