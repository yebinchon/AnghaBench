; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_dec_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_dec_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_node = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i64, i64, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BINDER_DEBUG_INTERNAL_REFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"binder: refless node %d deleted\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"binder: dead node %d deleted\0A\00", align 1
@BINDER_STAT_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_node*, i32, i32)* @binder_dec_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_dec_node(%struct.binder_node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.binder_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.binder_node* %0, %struct.binder_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %15 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  br label %23

18:                                               ; preds = %10
  %19 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %20 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %25 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %30 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %29, i32 0, i32 10
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23
  store i32 0, i32* %4, align 4
  br label %144

34:                                               ; preds = %28
  br label %55

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %40 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %38, %35
  %44 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %45 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %50 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %49, i32 0, i32 7
  %51 = call i64 @hlist_empty(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %43
  store i32 0, i32* %4, align 4
  br label %144

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %34
  %56 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %57 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %91

60:                                               ; preds = %55
  %61 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %62 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %67 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %65, %60
  %71 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %72 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i64 @list_empty(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %78 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %81 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = call i32 @list_add_tail(i32* %79, i32* %83)
  %85 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %86 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = call i32 @wake_up_interruptible(i32* %88)
  br label %90

90:                                               ; preds = %76, %70
  br label %143

91:                                               ; preds = %65, %55
  %92 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %93 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %92, i32 0, i32 7
  %94 = call i64 @hlist_empty(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %142

96:                                               ; preds = %91
  %97 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %98 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %142, label %101

101:                                              ; preds = %96
  %102 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %103 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %142, label %106

106:                                              ; preds = %101
  %107 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %108 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = call i32 @list_del_init(i32* %109)
  %111 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %112 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = icmp ne %struct.TYPE_4__* %113, null
  br i1 %114, label %115, label %128

115:                                              ; preds = %106
  %116 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %117 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %116, i32 0, i32 3
  %118 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %119 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = call i32 @rb_erase(i32* %117, i32* %121)
  %123 = load i32, i32* @BINDER_DEBUG_INTERNAL_REFS, align 4
  %124 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %125 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @binder_debug(i32 %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %137

128:                                              ; preds = %106
  %129 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %130 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %129, i32 0, i32 1
  %131 = call i32 @hlist_del(i32* %130)
  %132 = load i32, i32* @BINDER_DEBUG_INTERNAL_REFS, align 4
  %133 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %134 = getelementptr inbounds %struct.binder_node, %struct.binder_node* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @binder_debug(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %128, %115
  %138 = load %struct.binder_node*, %struct.binder_node** %5, align 8
  %139 = call i32 @kfree(%struct.binder_node* %138)
  %140 = load i32, i32* @BINDER_STAT_NODE, align 4
  %141 = call i32 @binder_stats_deleted(i32 %140)
  br label %142

142:                                              ; preds = %137, %101, %96, %91
  br label %143

143:                                              ; preds = %142, %90
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %53, %33
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @binder_debug(i32, i8*, i32) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @kfree(%struct.binder_node*) #1

declare dso_local i32 @binder_stats_deleted(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
