; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_get_seg_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_get_seg_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i64 }

@QL3022_DEVICE_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*, i16)* @ql_get_seg_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_seg_count(%struct.ql3_adapter* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql3_adapter*, align 8
  %5 = alloca i16, align 2
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %7 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QL3022_DEVICE_ID, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %35

12:                                               ; preds = %2
  %13 = load i16, i16* %5, align 2
  %14 = zext i16 %13 to i32
  switch i32 %14, label %34 [
    i32 0, label %15
    i32 1, label %16
    i32 2, label %17
    i32 3, label %18
    i32 4, label %19
    i32 5, label %20
    i32 6, label %21
    i32 7, label %22
    i32 8, label %23
    i32 9, label %24
    i32 10, label %25
    i32 11, label %26
    i32 12, label %27
    i32 13, label %28
    i32 14, label %29
    i32 15, label %30
    i32 16, label %31
    i32 17, label %32
    i32 18, label %33
  ]

15:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %35

16:                                               ; preds = %12
  store i32 2, i32* %3, align 4
  br label %35

17:                                               ; preds = %12
  store i32 3, i32* %3, align 4
  br label %35

18:                                               ; preds = %12
  store i32 5, i32* %3, align 4
  br label %35

19:                                               ; preds = %12
  store i32 6, i32* %3, align 4
  br label %35

20:                                               ; preds = %12
  store i32 7, i32* %3, align 4
  br label %35

21:                                               ; preds = %12
  store i32 8, i32* %3, align 4
  br label %35

22:                                               ; preds = %12
  store i32 10, i32* %3, align 4
  br label %35

23:                                               ; preds = %12
  store i32 11, i32* %3, align 4
  br label %35

24:                                               ; preds = %12
  store i32 12, i32* %3, align 4
  br label %35

25:                                               ; preds = %12
  store i32 13, i32* %3, align 4
  br label %35

26:                                               ; preds = %12
  store i32 15, i32* %3, align 4
  br label %35

27:                                               ; preds = %12
  store i32 16, i32* %3, align 4
  br label %35

28:                                               ; preds = %12
  store i32 17, i32* %3, align 4
  br label %35

29:                                               ; preds = %12
  store i32 18, i32* %3, align 4
  br label %35

30:                                               ; preds = %12
  store i32 20, i32* %3, align 4
  br label %35

31:                                               ; preds = %12
  store i32 21, i32* %3, align 4
  br label %35

32:                                               ; preds = %12
  store i32 22, i32* %3, align 4
  br label %35

33:                                               ; preds = %12
  store i32 23, i32* %3, align 4
  br label %35

34:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
