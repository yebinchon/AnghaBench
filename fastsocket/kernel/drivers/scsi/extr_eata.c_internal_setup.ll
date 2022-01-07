; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_internal_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_internal_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INT_PARAM = common dso_local global i32 0, align 4
@io_port = common dso_local global i32* null, align 8
@setup_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lc:\00", align 1
@linked_comm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tm:\00", align 1
@tag_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"tc:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mq:\00", align 1
@max_queue_depth = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ls:\00", align 1
@link_statistics = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"et:\00", align 1
@ext_tran = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"rs:\00", align 1
@rev_scan = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"ip:\00", align 1
@isa_probe = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"ep:\00", align 1
@eisa_probe = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"pp:\00", align 1
@pci_probe = common dso_local global i32 0, align 4
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
  br i1 %16, label %17, label %47

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
  store i32 1, i32* @setup_done, align 4
  br label %47

47:                                               ; preds = %42, %2
  br label %48

48:                                               ; preds = %156, %47
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 58)
  store i8* %53, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %157

57:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 110
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 78
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %57
  store i32 0, i32* %9, align 4
  br label %80

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 121
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 89
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68
  store i32 1, i32* %9, align 4
  br label %79

75:                                               ; preds = %71
  %76 = load i8*, i8** %8, align 8
  %77 = call i64 @simple_strtoul(i8* %76, i32* null, i32 0)
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %75, %74
  br label %80

80:                                               ; preds = %79, %67
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @strncmp(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* @linked_comm, align 4
  br label %149

86:                                               ; preds = %80
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @strncmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* @tag_mode, align 4
  br label %148

92:                                               ; preds = %86
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @strncmp(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* @tag_mode, align 4
  br label %147

98:                                               ; preds = %92
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @strncmp(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* @max_queue_depth, align 4
  br label %146

104:                                              ; preds = %98
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @strncmp(i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* @link_statistics, align 4
  br label %145

110:                                              ; preds = %104
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @strncmp(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* @ext_tran, align 4
  br label %144

116:                                              ; preds = %110
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @strncmp(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* @rev_scan, align 4
  br label %143

122:                                              ; preds = %116
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @strncmp(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* @isa_probe, align 4
  br label %142

128:                                              ; preds = %122
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @strncmp(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* @eisa_probe, align 4
  br label %141

134:                                              ; preds = %128
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @strncmp(i8* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* @pci_probe, align 4
  br label %140

140:                                              ; preds = %138, %134
  br label %141

141:                                              ; preds = %140, %132
  br label %142

142:                                              ; preds = %141, %126
  br label %143

143:                                              ; preds = %142, %120
  br label %144

144:                                              ; preds = %143, %114
  br label %145

145:                                              ; preds = %144, %108
  br label %146

146:                                              ; preds = %145, %102
  br label %147

147:                                              ; preds = %146, %96
  br label %148

148:                                              ; preds = %147, %90
  br label %149

149:                                              ; preds = %148, %84
  %150 = load i8*, i8** %7, align 8
  %151 = call i8* @strchr(i8* %150, i8 signext 44)
  store i8* %151, i8** %7, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i8*, i8** %7, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %7, align 8
  br label %156

156:                                              ; preds = %153, %149
  br label %48

157:                                              ; preds = %55
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
