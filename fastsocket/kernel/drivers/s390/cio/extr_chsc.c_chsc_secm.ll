; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_secm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_secm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_subsystem = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chsc_secm(%struct.channel_subsystem* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.channel_subsystem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.channel_subsystem* %0, %struct.channel_subsystem** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load i32, i32* @GFP_DMA, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @get_zeroed_page(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %122

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %18
  %22 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %23 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %67, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = load i32, i32* @GFP_DMA, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @get_zeroed_page(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %33 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* @GFP_DMA, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @get_zeroed_page(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %40 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %42 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %26
  %46 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %47 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %45, %26
  %51 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %52 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = call i32 @free_page(i64 %54)
  %56 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %57 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = call i32 @free_page(i64 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = call i32 @free_page(i64 %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %122

66:                                               ; preds = %45
  br label %67

67:                                               ; preds = %66, %21, %18
  %68 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @__chsc_do_secm(%struct.channel_subsystem* %68, i32 %69, i8* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %101, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %77 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %79 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %74
  %83 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %84 = call i32 @chsc_add_cmg_attr(%struct.channel_subsystem* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = call i32 @memset(i8* %88, i32 0, i32 %89)
  %91 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @__chsc_do_secm(%struct.channel_subsystem* %91, i32 0, i8* %92)
  %94 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %95 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %87, %82
  br label %100

97:                                               ; preds = %74
  %98 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %99 = call i32 @chsc_remove_cmg_attr(%struct.channel_subsystem* %98)
  br label %100

100:                                              ; preds = %97, %96
  br label %101

101:                                              ; preds = %100, %67
  %102 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %103 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %101
  %107 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %108 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = call i32 @free_page(i64 %110)
  %112 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %113 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = call i32 @free_page(i64 %115)
  br label %117

117:                                              ; preds = %106, %101
  %118 = load i8*, i8** %6, align 8
  %119 = ptrtoint i8* %118 to i64
  %120 = call i32 @free_page(i64 %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %117, %50, %15
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @__chsc_do_secm(%struct.channel_subsystem*, i32, i8*) #1

declare dso_local i32 @chsc_add_cmg_attr(%struct.channel_subsystem*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @chsc_remove_cmg_attr(%struct.channel_subsystem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
