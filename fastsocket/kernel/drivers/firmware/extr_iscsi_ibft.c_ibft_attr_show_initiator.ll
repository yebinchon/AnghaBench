; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_iscsi_ibft.c_ibft_attr_show_initiator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_iscsi_ibft.c_ibft_attr_show_initiator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibft_kobject = type { i8*, %struct.ibft_initiator* }
%struct.ibft_initiator = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @ibft_attr_show_initiator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibft_attr_show_initiator(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ibft_kobject*, align 8
  %9 = alloca %struct.ibft_initiator*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ibft_kobject*
  store %struct.ibft_kobject* %13, %struct.ibft_kobject** %8, align 8
  %14 = load %struct.ibft_kobject*, %struct.ibft_kobject** %8, align 8
  %15 = getelementptr inbounds %struct.ibft_kobject, %struct.ibft_kobject* %14, i32 0, i32 1
  %16 = load %struct.ibft_initiator*, %struct.ibft_initiator** %15, align 8
  store %struct.ibft_initiator* %16, %struct.ibft_initiator** %9, align 8
  %17 = load %struct.ibft_kobject*, %struct.ibft_kobject** %8, align 8
  %18 = getelementptr inbounds %struct.ibft_kobject, %struct.ibft_kobject* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %11, align 8
  %21 = load %struct.ibft_initiator*, %struct.ibft_initiator** %9, align 8
  %22 = icmp ne %struct.ibft_initiator* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %97 [
    i32 133, label %26
    i32 134, label %36
    i32 131, label %46
    i32 128, label %55
    i32 130, label %64
    i32 129, label %73
    i32 132, label %82
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.ibft_initiator*, %struct.ibft_initiator** %9, align 8
  %29 = getelementptr inbounds %struct.ibft_initiator, %struct.ibft_initiator* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** %11, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %11, align 8
  br label %98

36:                                               ; preds = %24
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.ibft_initiator*, %struct.ibft_initiator** %9, align 8
  %39 = getelementptr inbounds %struct.ibft_initiator, %struct.ibft_initiator* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i8*, i8** %11, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %11, align 8
  br label %98

46:                                               ; preds = %24
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.ibft_initiator*, %struct.ibft_initiator** %9, align 8
  %49 = getelementptr inbounds %struct.ibft_initiator, %struct.ibft_initiator* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sprintf_ipaddr(i8* %47, i32 %50)
  %52 = load i8*, i8** %11, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %11, align 8
  br label %98

55:                                               ; preds = %24
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.ibft_initiator*, %struct.ibft_initiator** %9, align 8
  %58 = getelementptr inbounds %struct.ibft_initiator, %struct.ibft_initiator* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sprintf_ipaddr(i8* %56, i32 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %11, align 8
  br label %98

64:                                               ; preds = %24
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.ibft_initiator*, %struct.ibft_initiator** %9, align 8
  %67 = getelementptr inbounds %struct.ibft_initiator, %struct.ibft_initiator* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sprintf_ipaddr(i8* %65, i32 %68)
  %70 = load i8*, i8** %11, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %11, align 8
  br label %98

73:                                               ; preds = %24
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.ibft_initiator*, %struct.ibft_initiator** %9, align 8
  %76 = getelementptr inbounds %struct.ibft_initiator, %struct.ibft_initiator* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sprintf_ipaddr(i8* %74, i32 %77)
  %79 = load i8*, i8** %11, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %11, align 8
  br label %98

82:                                               ; preds = %24
  %83 = load i8*, i8** %11, align 8
  %84 = load %struct.ibft_initiator*, %struct.ibft_initiator** %9, align 8
  %85 = getelementptr inbounds %struct.ibft_initiator, %struct.ibft_initiator* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.ibft_initiator*, %struct.ibft_initiator** %9, align 8
  %89 = getelementptr inbounds %struct.ibft_initiator, %struct.ibft_initiator* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  %93 = call i32 @sprintf_string(i8* %83, i32 %86, i8* %92)
  %94 = load i8*, i8** %11, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %11, align 8
  br label %98

97:                                               ; preds = %24
  br label %98

98:                                               ; preds = %97, %82, %73, %64, %55, %46, %36, %26
  %99 = load i8*, i8** %11, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %98, %23
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @sprintf_ipaddr(i8*, i32) #1

declare dso_local i32 @sprintf_string(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
