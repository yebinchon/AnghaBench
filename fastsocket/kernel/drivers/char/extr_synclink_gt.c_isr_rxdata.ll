; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_isr_rxdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_isr_rxdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i64 }

@SSR = common dso_local global i32 0, align 4
@IRQ_RXDATA = common dso_local global i32 0, align 4
@RDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"isr_rxdata %s RDR=%04X\0A\00", align 1
@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@BIT10 = common dso_local global i16 0, align 2
@BIT15 = common dso_local global i16 0, align 2
@BH_RECEIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @isr_rxdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_rxdata(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %6 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %7 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %10 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %139, %41, %1
  %13 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %14 = load i32, i32* @SSR, align 4
  %15 = call i32 @rd_reg16(%struct.slgt_info* %13, i32 %14)
  %16 = load i32, i32* @IRQ_RXDATA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %140

19:                                               ; preds = %12
  %20 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %21 = load i32, i32* @RDR, align 4
  %22 = call i32 @rd_reg16(%struct.slgt_info* %20, i32 %21)
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %5, align 2
  %24 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %25 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @DBGISR(i8* %29)
  %31 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %32 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %31, i32 0, i32 6
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @desc_complete(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %19
  %42 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %43 = call i32 @rx_stop(%struct.slgt_info* %42)
  %44 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %45 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  br label %12

46:                                               ; preds = %19
  %47 = load i16, i16* %5, align 2
  %48 = trunc i16 %47 to i8
  %49 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %50 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %49, i32 0, i32 6
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %3, align 4
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 %48, i8* %60, align 1
  %61 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %62 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %46
  %68 = load i16, i16* %5, align 2
  %69 = zext i16 %68 to i32
  %70 = ashr i32 %69, 8
  %71 = trunc i32 %70 to i8
  %72 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %73 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %72, i32 0, i32 6
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %3, align 4
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 %71, i8* %83, align 1
  br label %84

84:                                               ; preds = %67, %46
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %87 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %84
  %91 = load i16, i16* %5, align 2
  %92 = zext i16 %91 to i32
  %93 = load i16, i16* @BIT10, align 2
  %94 = zext i16 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %90, %84
  %98 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %99 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %98, i32 0, i32 6
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = load i32, i32* %3, align 4
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @set_desc_count(i8* %106, i32 %104)
  %108 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %109 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %108, i32 0, i32 6
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %112
  %114 = load i16, i16* @BIT15, align 2
  %115 = zext i16 %114 to i32
  %116 = load i16, i16* %5, align 2
  %117 = zext i16 %116 to i32
  %118 = ashr i32 %117, 8
  %119 = or i32 %115, %118
  %120 = trunc i32 %119 to i16
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @set_desc_status(i8* %122, i16 zeroext %120)
  store i32 0, i32* %3, align 4
  %124 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %125 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  %126 = load i32, i32* %4, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %4, align 4
  %128 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %129 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %97
  %134 = load i32, i32* @BH_RECEIVE, align 4
  %135 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %136 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %90
  br label %12

140:                                              ; preds = %12
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %143 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %3, align 4
  %145 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %146 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  ret void
}

declare dso_local i32 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @DBGISR(i8*) #1

declare dso_local i64 @desc_complete(i8*) #1

declare dso_local i32 @rx_stop(%struct.slgt_info*) #1

declare dso_local i32 @set_desc_count(i8*, i32) #1

declare dso_local i32 @set_desc_status(i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
