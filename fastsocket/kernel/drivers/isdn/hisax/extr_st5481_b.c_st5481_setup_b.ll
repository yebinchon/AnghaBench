; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_b.c_st5481_setup_b.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_b.c_st5481_setup_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_bcs = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HSCX_BUFMAX = common dso_local global i32 0, align 4
@NUM_ISO_PACKETS_B = common dso_local global i32 0, align 4
@SIZE_ISO_PACKETS_B_IN = common dso_local global i32 0, align 4
@EP_B2_IN = common dso_local global i32 0, align 4
@EP_B1_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@IN_B2_COUNTER = common dso_local global i32 0, align 4
@IN_B1_COUNTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st5481_setup_b(%struct.st5481_bcs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st5481_bcs*, align 8
  %4 = alloca i32, align 4
  store %struct.st5481_bcs* %0, %struct.st5481_bcs** %3, align 8
  %5 = call i32 @DBG(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %7 = call i32 @st5481_setup_b_out(%struct.st5481_bcs* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %74

11:                                               ; preds = %1
  %12 = load i32, i32* @HSCX_BUFMAX, align 4
  %13 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %14 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  store i32 %12, i32* %15, align 8
  %16 = load i32, i32* @NUM_ISO_PACKETS_B, align 4
  %17 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %18 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @SIZE_ISO_PACKETS_B_IN, align 4
  %21 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %22 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 8
  %24 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %25 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  %29 = load i32, i32* @EP_B2_IN, align 4
  br label %32

30:                                               ; preds = %11
  %31 = load i32, i32* @EP_B1_IN, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32, i32* @USB_DIR_IN, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %37 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %40 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @IN_B2_COUNTER, align 4
  br label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @IN_B1_COUNTER, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %50 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %53 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %56 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %59 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %62 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32* %60, i32** %63, align 8
  %64 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %65 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %64, i32 0, i32 0
  %66 = call i32 @st5481_setup_in(%struct.TYPE_4__* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %47
  br label %71

70:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %76

71:                                               ; preds = %69
  %72 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %73 = call i32 @st5481_release_b_out(%struct.st5481_bcs* %72)
  br label %74

74:                                               ; preds = %71, %10
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @st5481_setup_b_out(%struct.st5481_bcs*) #1

declare dso_local i32 @st5481_setup_in(%struct.TYPE_4__*) #1

declare dso_local i32 @st5481_release_b_out(%struct.st5481_bcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
