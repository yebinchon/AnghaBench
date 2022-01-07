; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_internal_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_internal_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INT_PARAM = common dso_local global i32 0, align 4
@io_port = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@setup_done = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lc:\00", align 1
@linked_comm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"of:\00", align 1
@have_old_firmware = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"tm:\00", align 1
@tag_mode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"tc:\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mq:\00", align 1
@max_queue_depth = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"ls:\00", align 1
@link_statistics = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"et:\00", align 1
@ext_tran = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @internal_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_setup(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_INT_PARAM, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @MAX_INT_PARAM, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %21, %17
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** @io_port, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load i32*, i32** @io_port, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 0, i32* %46, align 4
  %47 = load i8*, i8** @TRUE, align 8
  store i8* %47, i8** @setup_done, align 8
  br label %48

48:                                               ; preds = %42, %2
  br label %49

49:                                               ; preds = %139, %48
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 58)
  store i8* %54, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i1 [ false, %49 ], [ %55, %52 ]
  br i1 %57, label %58, label %140

58:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 110
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 78
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %58
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %9, align 4
  br label %84

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 121
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 89
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %70
  %77 = load i8*, i8** @TRUE, align 8
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %9, align 4
  br label %83

79:                                               ; preds = %73
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @simple_strtoul(i8* %80, i32* null, i32 0)
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %79, %76
  br label %84

84:                                               ; preds = %83, %68
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @strncmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* @linked_comm, align 4
  br label %132

90:                                               ; preds = %84
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @strncmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* @have_old_firmware, align 4
  br label %131

96:                                               ; preds = %90
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @strncmp(i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* @tag_mode, align 4
  br label %130

102:                                              ; preds = %96
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @strncmp(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* @tag_mode, align 4
  br label %129

108:                                              ; preds = %102
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @strncmp(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* @max_queue_depth, align 4
  br label %128

114:                                              ; preds = %108
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @strncmp(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* @link_statistics, align 4
  br label %127

120:                                              ; preds = %114
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 @strncmp(i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* @ext_tran, align 4
  br label %126

126:                                              ; preds = %124, %120
  br label %127

127:                                              ; preds = %126, %118
  br label %128

128:                                              ; preds = %127, %112
  br label %129

129:                                              ; preds = %128, %106
  br label %130

130:                                              ; preds = %129, %100
  br label %131

131:                                              ; preds = %130, %94
  br label %132

132:                                              ; preds = %131, %88
  %133 = load i8*, i8** %7, align 8
  %134 = call i8* @strchr(i8* %133, i8 signext 44)
  store i8* %134, i8** %7, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %7, align 8
  br label %139

139:                                              ; preds = %136, %132
  br label %49

140:                                              ; preds = %56
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
