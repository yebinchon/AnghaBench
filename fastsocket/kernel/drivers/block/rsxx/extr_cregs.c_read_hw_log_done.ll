; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_cregs.c_read_hw_log_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_cregs.c_read_hw_log_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.creg_cmd = type { i8*, i32, i32 }

@LOG_BUF_SIZE8 = common dso_local global i64 0, align 8
@CREG_STAT_LOG_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)* @read_hw_log_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_hw_log_done(%struct.rsxx_cardinfo* %0, %struct.creg_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.rsxx_cardinfo*, align 8
  %5 = alloca %struct.creg_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %4, align 8
  store %struct.creg_cmd* %1, %struct.creg_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.creg_cmd*, %struct.creg_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %112

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %101, %18
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.creg_cmd*, %struct.creg_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %102

25:                                               ; preds = %19
  %26 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %27 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %31 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8* %34, i8** %8, align 8
  %35 = load %struct.creg_cmd*, %struct.creg_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i64, i64* @LOG_BUF_SIZE8, align 8
  %41 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %42 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %40, %44
  %46 = call i32 @min(i32 %39, i64 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @substrncpy(i8* %47, i8* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %60 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %58
  store i64 %63, i64* %61, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %25
  %73 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %74 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @LOG_BUF_SIZE8, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %72, %25
  %80 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %81 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 1
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %87 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %88 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %92 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @hw_log_msg(%struct.rsxx_cardinfo* %86, i8* %90, i32 %95)
  br label %97

97:                                               ; preds = %85, %79
  %98 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %99 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %72
  br label %19

102:                                              ; preds = %19
  %103 = load %struct.creg_cmd*, %struct.creg_cmd** %5, align 8
  %104 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CREG_STAT_LOG_PENDING, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %111 = call i32 @rsxx_read_hw_log(%struct.rsxx_cardinfo* %110)
  br label %112

112:                                              ; preds = %17, %109, %102
  ret void
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @substrncpy(i8*, i8*, i32) #1

declare dso_local i32 @hw_log_msg(%struct.rsxx_cardinfo*, i8*, i32) #1

declare dso_local i32 @rsxx_read_hw_log(%struct.rsxx_cardinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
