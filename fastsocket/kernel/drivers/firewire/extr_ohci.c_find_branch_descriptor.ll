; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_find_branch_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_find_branch_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor = type { i32 }

@DESCRIPTOR_BRANCH_ALWAYS = common dso_local global i32 0, align 4
@DESCRIPTOR_KEY_IMMEDIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.descriptor* (%struct.descriptor*, i32)* @find_branch_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.descriptor* @find_branch_descriptor(%struct.descriptor* %0, i32 %1) #0 {
  %3 = alloca %struct.descriptor*, align 8
  %4 = alloca %struct.descriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.descriptor* %0, %struct.descriptor** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %9 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le16_to_cpu(i32 %10)
  %12 = load i32, i32* @DESCRIPTOR_BRANCH_ALWAYS, align 4
  %13 = and i32 %11, %12
  %14 = ashr i32 %13, 2
  store i32 %14, i32* %6, align 4
  %15 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %16 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  %19 = load i32, i32* @DESCRIPTOR_KEY_IMMEDIATE, align 4
  %20 = and i32 %18, %19
  %21 = ashr i32 %20, 8
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %24
  %31 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  store %struct.descriptor* %31, %struct.descriptor** %3, align 8
  br label %38

32:                                               ; preds = %27, %2
  %33 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %33, i64 %35
  %37 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %36, i64 -1
  store %struct.descriptor* %37, %struct.descriptor** %3, align 8
  br label %38

38:                                               ; preds = %32, %30
  %39 = load %struct.descriptor*, %struct.descriptor** %3, align 8
  ret %struct.descriptor* %39
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
