; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_alloc_screen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_alloc_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty3270*)* @tty3270_alloc_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty3270_alloc_screen(%struct.tty3270* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty3270*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tty3270* %0, %struct.tty3270** %3, align 8
  %6 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %7 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 2
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i64 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_4__*
  %17 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %18 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %17, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %18, align 8
  %19 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %20 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %86

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %28 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 2
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %25
  %34 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %35 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kzalloc(i64 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.TYPE_4__*
  %44 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %45 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %50, align 8
  %51 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %52 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %33
  br label %66

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %25

65:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %89

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %71, %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %5, align 4
  %70 = icmp ne i32 %68, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %73 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = call i32 @kfree(%struct.TYPE_4__* %79)
  br label %67

81:                                               ; preds = %67
  %82 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %83 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = call i32 @kfree(%struct.TYPE_4__* %84)
  br label %86

86:                                               ; preds = %81, %23
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %65
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
