; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_hdlc_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_hdlc_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritz_bcs = type { i64, i8*, i64, %struct.fritz_adapter* }
%struct.fritz_adapter = type { i32, i32, i64 }

@AVM_IDX_HDLC_2 = common dso_local global i8 0, align 1
@AVM_IDX_HDLC_1 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c"hdlc_empty_fifo %d\00", align 1
@HSCX_BUFMAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"hdlc_empty_fifo: incoming packet too large\00", align 1
@AVM_INDEX = common dso_local global i64 0, align 8
@AVM_DATA = common dso_local global i64 0, align 8
@HDLC_FIFO = common dso_local global i64 0, align 8
@AVM_HDLC_FIFO_2 = common dso_local global i64 0, align 8
@AVM_HDLC_FIFO_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritz_bcs*, i32)* @hdlc_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_empty_fifo(%struct.fritz_bcs* %0, i32 %1) #0 {
  %3 = alloca %struct.fritz_bcs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fritz_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store %struct.fritz_bcs* %0, %struct.fritz_bcs** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %9 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %8, i32 0, i32 3
  %10 = load %struct.fritz_adapter*, %struct.fritz_adapter** %9, align 8
  store %struct.fritz_adapter* %10, %struct.fritz_adapter** %5, align 8
  %11 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %12 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8, i8* @AVM_IDX_HDLC_2, align 1
  %17 = zext i8 %16 to i32
  br label %21

18:                                               ; preds = %2
  %19 = load i8, i8* @AVM_IDX_HDLC_1, align 1
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %17, %15 ], [ %20, %18 ]
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %7, align 1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32, i8*, ...) @DBG(i32 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %27 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load i64, i64* @HSCX_BUFMAX, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = call i32 (i32, i8*, ...) @DBG(i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %121

36:                                               ; preds = %21
  %37 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %38 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %41 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8* %43, i8** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %47 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %51 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %121 [
    i32 130, label %53
    i32 129, label %79
    i32 128, label %99
  ]

53:                                               ; preds = %36
  %54 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %54, i32 0, i32 1
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load i8, i8* %7, align 1
  %58 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AVM_INDEX, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outl(i8 zeroext %57, i64 %62)
  %64 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %65 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AVM_DATA, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* @HDLC_FIFO, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 3
  %74 = sdiv i32 %73, 4
  %75 = call i32 @insl(i64 %70, i8* %71, i32 %74)
  %76 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %77 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %76, i32 0, i32 1
  %78 = call i32 @spin_unlock(i32* %77)
  br label %121

79:                                               ; preds = %36
  %80 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %81 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %84 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i64, i64* @AVM_HDLC_FIFO_2, align 8
  br label %91

89:                                               ; preds = %79
  %90 = load i64, i64* @AVM_HDLC_FIFO_1, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  %93 = add nsw i64 %82, %92
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 3
  %97 = sdiv i32 %96, 4
  %98 = call i32 @insl(i64 %93, i8* %94, i32 %97)
  br label %121

99:                                               ; preds = %36
  %100 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %101 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %100, i32 0, i32 1
  %102 = call i32 @spin_lock(i32* %101)
  %103 = load i8, i8* %7, align 1
  %104 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %105 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @AVM_INDEX, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @outb(i8 zeroext %103, i64 %108)
  %110 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %111 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AVM_DATA, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @insb(i64 %114, i8* %115, i32 %116)
  %118 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %119 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %118, i32 0, i32 1
  %120 = call i32 @spin_unlock(i32* %119)
  br label %121

121:                                              ; preds = %34, %36, %99, %91, %53
  ret void
}

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outl(i8 zeroext, i64) #1

declare dso_local i32 @insl(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @insb(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
