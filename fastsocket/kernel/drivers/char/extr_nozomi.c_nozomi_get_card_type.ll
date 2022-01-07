; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nozomi.c_nozomi_get_card_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nozomi.c_nozomi_get_card_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@F32_2 = common dso_local global i32 0, align 4
@F32_8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Card type is: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nozomi*)* @nozomi_get_card_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nozomi_get_card_type(%struct.nozomi* %0) #0 {
  %2 = alloca %struct.nozomi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nozomi* %0, %struct.nozomi** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 6
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %10 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @pci_resource_len(%struct.TYPE_2__* %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %5

21:                                               ; preds = %5
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 2048
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @F32_2, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @F32_8, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %31 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %33 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.nozomi*, %struct.nozomi** %2, align 8
  %37 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local i64 @pci_resource_len(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
