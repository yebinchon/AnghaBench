; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_mdesc.c_mdesc_get_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_mdesc.c_mdesc_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdesc_handle = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mdesc_elem = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MDESC_NODE_NULL = common dso_local global i64 0, align 8
@MD_NODE_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mdesc_get_property(%struct.mdesc_handle* %0, i64 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mdesc_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.mdesc_elem*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.mdesc_handle* %0, %struct.mdesc_handle** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %17 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %16, i32 0, i32 0
  %18 = call i8* @name_block(%struct.TYPE_8__* %17)
  store i8* %18, i8** %10, align 8
  %19 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %20 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 16
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %11, align 8
  %25 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %26 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %25, i32 0, i32 0
  %27 = call i8* @data_block(%struct.TYPE_8__* %26)
  store i8* %27, i8** %12, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @MDESC_NODE_NULL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %4
  store i8* null, i8** %5, align 8
  br label %101

36:                                               ; preds = %31
  %37 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %38 = getelementptr inbounds %struct.mdesc_handle, %struct.mdesc_handle* %37, i32 0, i32 0
  %39 = call %struct.mdesc_elem* @node_block(%struct.TYPE_8__* %38)
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %39, i64 %40
  store %struct.mdesc_elem* %41, %struct.mdesc_elem** %13, align 8
  %42 = load %struct.mdesc_elem*, %struct.mdesc_elem** %13, align 8
  %43 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %42, i32 1
  store %struct.mdesc_elem* %43, %struct.mdesc_elem** %13, align 8
  br label %44

44:                                               ; preds = %97, %36
  %45 = load %struct.mdesc_elem*, %struct.mdesc_elem** %13, align 8
  %46 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MD_NODE_END, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %100

50:                                               ; preds = %44
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %51 = load %struct.mdesc_elem*, %struct.mdesc_elem** %13, align 8
  %52 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %73 [
    i32 128, label %54
    i32 129, label %59
    i32 130, label %59
  ]

54:                                               ; preds = %50
  %55 = load %struct.mdesc_elem*, %struct.mdesc_elem** %13, align 8
  %56 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = bitcast i32* %57 to i8*
  store i8* %58, i8** %14, align 8
  store i32 8, i32* %15, align 4
  br label %74

59:                                               ; preds = %50, %50
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.mdesc_elem*, %struct.mdesc_elem** %13, align 8
  %62 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr i8, i8* %60, i64 %66
  store i8* %67, i8** %14, align 8
  %68 = load %struct.mdesc_elem*, %struct.mdesc_elem** %13, align 8
  %69 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %15, align 4
  br label %74

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %59, %54
  %75 = load i8*, i8** %14, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %97

78:                                               ; preds = %74
  %79 = load i8*, i8** %10, align 8
  %80 = load %struct.mdesc_elem*, %struct.mdesc_elem** %13, align 8
  %81 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @strcmp(i8* %84, i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %78
  %89 = load i32*, i32** %9, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %15, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i8*, i8** %14, align 8
  store i8* %95, i8** %5, align 8
  br label %101

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %77
  %98 = load %struct.mdesc_elem*, %struct.mdesc_elem** %13, align 8
  %99 = getelementptr inbounds %struct.mdesc_elem, %struct.mdesc_elem* %98, i32 1
  store %struct.mdesc_elem* %99, %struct.mdesc_elem** %13, align 8
  br label %44

100:                                              ; preds = %44
  store i8* null, i8** %5, align 8
  br label %101

101:                                              ; preds = %100, %94, %35
  %102 = load i8*, i8** %5, align 8
  ret i8* %102
}

declare dso_local i8* @name_block(%struct.TYPE_8__*) #1

declare dso_local i8* @data_block(%struct.TYPE_8__*) #1

declare dso_local %struct.mdesc_elem* @node_block(%struct.TYPE_8__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
