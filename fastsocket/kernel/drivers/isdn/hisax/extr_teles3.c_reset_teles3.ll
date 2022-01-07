; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teles3.c_reset_teles3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teles3.c_reset_teles3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@ISDN_CTYPE_TELESPCMCIA = common dso_local global i64 0, align 8
@ISDN_CTYPE_COMPAQ_ISA = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*)* @reset_teles3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_teles3(%struct.IsdnCardState* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ISDN_CTYPE_TELESPCMCIA, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %102

10:                                               ; preds = %1
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %10
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ISDN_CTYPE_COMPAQ_ISA, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %17
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %35 [
    i32 2, label %27
    i32 9, label %27
    i32 3, label %28
    i32 4, label %29
    i32 5, label %30
    i32 10, label %31
    i32 11, label %32
    i32 12, label %33
    i32 15, label %34
  ]

27:                                               ; preds = %23, %23
  store i32 0, i32* %4, align 4
  br label %36

28:                                               ; preds = %23
  store i32 2, i32* %4, align 4
  br label %36

29:                                               ; preds = %23
  store i32 4, i32* %4, align 4
  br label %36

30:                                               ; preds = %23
  store i32 6, i32* %4, align 4
  br label %36

31:                                               ; preds = %23
  store i32 8, i32* %4, align 4
  br label %36

32:                                               ; preds = %23
  store i32 10, i32* %4, align 4
  br label %36

33:                                               ; preds = %23
  store i32 12, i32* %4, align 4
  br label %36

34:                                               ; preds = %23
  store i32 14, i32* %4, align 4
  br label %36

35:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %103

36:                                               ; preds = %34, %33, %32, %31, %30, %29, %28, %27
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %38 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @byteout(i64 %42, i32 %43)
  %45 = load i32, i32* @HZ, align 4
  %46 = sdiv i32 %45, 10
  %47 = add nsw i32 %46, 1
  %48 = call i32 @HZDELAY(i32 %47)
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, 1
  %57 = call i32 @byteout(i64 %54, i32 %56)
  %58 = load i32, i32* @HZ, align 4
  %59 = sdiv i32 %58, 10
  %60 = add nsw i32 %59, 1
  %61 = call i32 @HZDELAY(i32 %60)
  br label %101

62:                                               ; preds = %17, %10
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %64 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ISDN_CTYPE_COMPAQ_ISA, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %70 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @byteout(i64 %73, i32 255)
  %75 = call i32 @HZDELAY(i32 2)
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @byteout(i64 %80, i32 0)
  %82 = call i32 @HZDELAY(i32 2)
  br label %100

83:                                               ; preds = %62
  %84 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %85 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 60
  %90 = call i32 @byteout(i64 %89, i32 0)
  %91 = call i32 @HZDELAY(i32 2)
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %93 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 60
  %98 = call i32 @byteout(i64 %97, i32 1)
  %99 = call i32 @HZDELAY(i32 2)
  br label %100

100:                                              ; preds = %83, %68
  br label %101

101:                                              ; preds = %100, %36
  br label %102

102:                                              ; preds = %101, %1
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %35
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @byteout(i64, i32) #1

declare dso_local i32 @HZDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
