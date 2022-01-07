; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_harddog_user.c_start_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_harddog_user.c_start_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dog_data = type { i32, i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"/usr/bin/uml_watchdog\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-pid\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-mconsole\00", align 1
@__const.start_watchdog.mconsole_args = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null], align 16
@.str.3 = private unnamed_addr constant [41 x i8] c"harddog_open - os_pipe failed, err = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@pre_exec = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"harddog_open - run_helper failed, errno = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"harddog_open - EOF on watchdog pipe\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"harddog_open - read of watchdog pipe failed, err = %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_watchdog(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dog_data, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [7 x i8], align 1
  %15 = alloca i8, align 1
  %16 = alloca [4 x i8*], align 16
  %17 = alloca [4 x i8*], align 16
  %18 = alloca i8**, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* null, i8** %23, align 8
  %24 = bitcast [4 x i8*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([4 x i8*]* @__const.start_watchdog.mconsole_args to i8*), i64 32, i1 false)
  store i8** null, i8*** %18, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %26 = call i32 @os_pipe(i32* %25, i32 1, i32 0)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  br label %131

33:                                               ; preds = %3
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %35 = call i32 @os_pipe(i32* %34, i32 1, i32 0)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %117

42:                                               ; preds = %33
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.dog_data, %struct.dog_data* %8, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.dog_data, %struct.dog_data* %8, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.dog_data, %struct.dog_data* %8, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %50, i32* %53, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.dog_data, %struct.dog_data* %8, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %55, i32* %58, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %42
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds [4 x i8*], [4 x i8*]* %17, i64 0, i64 2
  store i8* %62, i8** %63, align 16
  %64 = getelementptr inbounds [4 x i8*], [4 x i8*]* %17, i64 0, i64 0
  store i8** %64, i8*** %18, align 8
  br label %70

65:                                               ; preds = %42
  %66 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 0, i64 0
  %67 = call i32 (...) @os_getpid()
  %68 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 0
  store i8** %69, i8*** %18, align 8
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* @pre_exec, align 4
  %72 = load i8**, i8*** %18, align 8
  %73 = call i32 @run_helper(i32 %71, %struct.dog_data* %8, i8** %72)
  store i32 %73, i32* %11, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @close(i32 %75)
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  br label %124

88:                                               ; preds = %70
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @read(i32 %90, i8* %15, i32 1)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @helper_wait(i32 %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %13, align 4
  br label %124

100:                                              ; preds = %88
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* @errno, align 4
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @helper_wait(i32 %106)
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %13, align 4
  br label %124

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %5, align 8
  store i32 %112, i32* %113, align 4
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %6, align 8
  store i32 %115, i32* %116, align 4
  store i32 0, i32* %4, align 4
  br label %133

117:                                              ; preds = %38
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @close(i32 %119)
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @close(i32 %122)
  br label %124

124:                                              ; preds = %117, %103, %94, %82
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @close(i32 %126)
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @close(i32 %129)
  br label %131

131:                                              ; preds = %124, %29
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %110
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @os_pipe(i32*, i32, i32) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @os_getpid(...) #2

declare dso_local i32 @run_helper(i32, %struct.dog_data*, i8**) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @helper_wait(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
