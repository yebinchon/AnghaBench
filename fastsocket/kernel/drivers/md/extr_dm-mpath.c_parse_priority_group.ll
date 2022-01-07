; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_parse_priority_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_parse_priority_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_arg = type { i32, i32, i8* }
%struct.priority_group = type { i32, i32, i32, %struct.multipath* }
%struct.dm_arg_set = type { i32, i32 }
%struct.multipath = type { %struct.dm_target* }
%struct.dm_target = type { i8* }
%struct.pgpath = type { i32, %struct.priority_group* }

@parse_priority_group._args = internal global [2 x %struct.dm_arg] [%struct.dm_arg { i32 1, i32 1024, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0) }, %struct.dm_arg { i32 0, i32 1024, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [24 x i8] c"invalid number of paths\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid number of selector args\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"not enough priority group arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"couldn't allocate priority group\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"not enough path parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.priority_group* (%struct.dm_arg_set*, %struct.multipath*)* @parse_priority_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.priority_group* @parse_priority_group(%struct.dm_arg_set* %0, %struct.multipath* %1) #0 {
  %3 = alloca %struct.priority_group*, align 8
  %4 = alloca %struct.dm_arg_set*, align 8
  %5 = alloca %struct.multipath*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.priority_group*, align 8
  %11 = alloca %struct.dm_target*, align 8
  %12 = alloca %struct.pgpath*, align 8
  %13 = alloca %struct.dm_arg_set, align 4
  store %struct.dm_arg_set* %0, %struct.dm_arg_set** %4, align 8
  store %struct.multipath* %1, %struct.multipath** %5, align 8
  %14 = load %struct.multipath*, %struct.multipath** %5, align 8
  %15 = getelementptr inbounds %struct.multipath, %struct.multipath* %14, i32 0, i32 0
  %16 = load %struct.dm_target*, %struct.dm_target** %15, align 8
  store %struct.dm_target* %16, %struct.dm_target** %11, align 8
  %17 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %18 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %23 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %25 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.priority_group* @ERR_PTR(i32 %27)
  store %struct.priority_group* %28, %struct.priority_group** %3, align 8
  br label %128

29:                                               ; preds = %2
  %30 = call %struct.priority_group* (...) @alloc_priority_group()
  store %struct.priority_group* %30, %struct.priority_group** %10, align 8
  %31 = load %struct.priority_group*, %struct.priority_group** %10, align 8
  %32 = icmp ne %struct.priority_group* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %35 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %35, align 8
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.priority_group* @ERR_PTR(i32 %37)
  store %struct.priority_group* %38, %struct.priority_group** %3, align 8
  br label %128

39:                                               ; preds = %29
  %40 = load %struct.multipath*, %struct.multipath** %5, align 8
  %41 = load %struct.priority_group*, %struct.priority_group** %10, align 8
  %42 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %41, i32 0, i32 3
  store %struct.multipath* %40, %struct.multipath** %42, align 8
  %43 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %44 = load %struct.priority_group*, %struct.priority_group** %10, align 8
  %45 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %46 = call i32 @parse_path_selector(%struct.dm_arg_set* %43, %struct.priority_group* %44, %struct.dm_target* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %122

50:                                               ; preds = %39
  %51 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %52 = load %struct.priority_group*, %struct.priority_group** %10, align 8
  %53 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %52, i32 0, i32 0
  %54 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %55 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %54, i32 0, i32 0
  %56 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([2 x %struct.dm_arg], [2 x %struct.dm_arg]* @parse_priority_group._args, i64 0, i64 0), %struct.dm_arg_set* %51, i32* %53, i8** %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %122

60:                                               ; preds = %50
  %61 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %62 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %63 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %62, i32 0, i32 0
  %64 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([2 x %struct.dm_arg], [2 x %struct.dm_arg]* @parse_priority_group._args, i64 0, i64 1), %struct.dm_arg_set* %61, i32* %8, i8** %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %122

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = add i32 1, %69
  store i32 %70, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %117, %68
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.priority_group*, %struct.priority_group** %10, align 8
  %74 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %120

77:                                               ; preds = %71
  %78 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %79 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %85 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %84, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %85, align 8
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %122

88:                                               ; preds = %77
  %89 = load i32, i32* %9, align 4
  %90 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %13, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %92 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %13, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  %95 = load %struct.priority_group*, %struct.priority_group** %10, align 8
  %96 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %95, i32 0, i32 2
  %97 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %98 = call %struct.pgpath* @parse_path(%struct.dm_arg_set* %13, i32* %96, %struct.dm_target* %97)
  store %struct.pgpath* %98, %struct.pgpath** %12, align 8
  %99 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %100 = call i64 @IS_ERR(%struct.pgpath* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %88
  %103 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %104 = call i32 @PTR_ERR(%struct.pgpath* %103)
  store i32 %104, i32* %6, align 4
  br label %122

105:                                              ; preds = %88
  %106 = load %struct.priority_group*, %struct.priority_group** %10, align 8
  %107 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %108 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %107, i32 0, i32 1
  store %struct.priority_group* %106, %struct.priority_group** %108, align 8
  %109 = load %struct.pgpath*, %struct.pgpath** %12, align 8
  %110 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %109, i32 0, i32 0
  %111 = load %struct.priority_group*, %struct.priority_group** %10, align 8
  %112 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %111, i32 0, i32 1
  %113 = call i32 @list_add_tail(i32* %110, i32* %112)
  %114 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @dm_consume_args(%struct.dm_arg_set* %114, i32 %115)
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %71

120:                                              ; preds = %71
  %121 = load %struct.priority_group*, %struct.priority_group** %10, align 8
  store %struct.priority_group* %121, %struct.priority_group** %3, align 8
  br label %128

122:                                              ; preds = %102, %83, %67, %59, %49
  %123 = load %struct.priority_group*, %struct.priority_group** %10, align 8
  %124 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  %125 = call i32 @free_priority_group(%struct.priority_group* %123, %struct.dm_target* %124)
  %126 = load i32, i32* %6, align 4
  %127 = call %struct.priority_group* @ERR_PTR(i32 %126)
  store %struct.priority_group* %127, %struct.priority_group** %3, align 8
  br label %128

128:                                              ; preds = %122, %120, %33, %21
  %129 = load %struct.priority_group*, %struct.priority_group** %3, align 8
  ret %struct.priority_group* %129
}

declare dso_local %struct.priority_group* @ERR_PTR(i32) #1

declare dso_local %struct.priority_group* @alloc_priority_group(...) #1

declare dso_local i32 @parse_path_selector(%struct.dm_arg_set*, %struct.priority_group*, %struct.dm_target*) #1

declare dso_local i32 @dm_read_arg(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

declare dso_local %struct.pgpath* @parse_path(%struct.dm_arg_set*, i32*, %struct.dm_target*) #1

declare dso_local i64 @IS_ERR(%struct.pgpath*) #1

declare dso_local i32 @PTR_ERR(%struct.pgpath*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dm_consume_args(%struct.dm_arg_set*, i32) #1

declare dso_local i32 @free_priority_group(%struct.priority_group*, %struct.dm_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
