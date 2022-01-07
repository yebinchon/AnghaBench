; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_slab_debug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_slab_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i8*, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@sanity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"sanity\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"%s not empty cannot disable sanity checks\0A\00", align 1
@redzone = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"red_zone\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s not empty cannot enable redzoning\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%s not empty cannot disable redzoning\0A\00", align 1
@poison = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"poison\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"%s not empty cannot enable poisoning\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"%s not empty cannot disable poisoning\0A\00", align 1
@tracking = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"store_user\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%s not empty cannot enable tracking\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%s not empty cannot disable tracking\0A\00", align 1
@tracing = common dso_local global i64 0, align 8
@slabs = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"%s can only enable trace for one slab at a time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slabinfo*)* @slab_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slab_debug(%struct.slabinfo* %0) #0 {
  %2 = alloca %struct.slabinfo*, align 8
  store %struct.slabinfo* %0, %struct.slabinfo** %2, align 8
  %3 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %4 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i64 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %206

9:                                                ; preds = %1
  %10 = load i64, i64* @sanity, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %14 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %19 = call i32 @set_obj(%struct.slabinfo* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %20

20:                                               ; preds = %17, %12, %9
  %21 = load i64, i64* @sanity, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %20
  %24 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %25 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %30 = call i64 @slab_empty(%struct.slabinfo* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %34 = call i32 @set_obj(%struct.slabinfo* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %41

35:                                               ; preds = %28
  %36 = load i32, i32* @stderr, align 4
  %37 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %38 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %35, %32
  br label %42

42:                                               ; preds = %41, %23, %20
  %43 = load i64, i64* @redzone, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %47 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %52 = call i64 @slab_empty(%struct.slabinfo* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %56 = call i32 @set_obj(%struct.slabinfo* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @stderr, align 4
  %59 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %60 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %57, %54
  br label %64

64:                                               ; preds = %63, %45, %42
  %65 = load i64, i64* @redzone, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %64
  %68 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %69 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %74 = call i64 @slab_empty(%struct.slabinfo* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %78 = call i32 @set_obj(%struct.slabinfo* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @stderr, align 4
  %81 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %82 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %79, %76
  br label %86

86:                                               ; preds = %85, %67, %64
  %87 = load i64, i64* @poison, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %91 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %89
  %95 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %96 = call i64 @slab_empty(%struct.slabinfo* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %100 = call i32 @set_obj(%struct.slabinfo* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 1)
  br label %107

101:                                              ; preds = %94
  %102 = load i32, i32* @stderr, align 4
  %103 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %104 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %101, %98
  br label %108

108:                                              ; preds = %107, %89, %86
  %109 = load i64, i64* @poison, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %108
  %112 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %113 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %118 = call i64 @slab_empty(%struct.slabinfo* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %122 = call i32 @set_obj(%struct.slabinfo* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %129

123:                                              ; preds = %116
  %124 = load i32, i32* @stderr, align 4
  %125 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %126 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @fprintf(i32 %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %123, %120
  br label %130

130:                                              ; preds = %129, %111, %108
  %131 = load i64, i64* @tracking, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %130
  %134 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %135 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %152, label %138

138:                                              ; preds = %133
  %139 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %140 = call i64 @slab_empty(%struct.slabinfo* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %144 = call i32 @set_obj(%struct.slabinfo* %143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 1)
  br label %151

145:                                              ; preds = %138
  %146 = load i32, i32* @stderr, align 4
  %147 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %148 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @fprintf(i32 %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %145, %142
  br label %152

152:                                              ; preds = %151, %133, %130
  %153 = load i64, i64* @tracking, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %174, label %155

155:                                              ; preds = %152
  %156 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %157 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %155
  %161 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %162 = call i64 @slab_empty(%struct.slabinfo* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %166 = call i32 @set_obj(%struct.slabinfo* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 0)
  br label %173

167:                                              ; preds = %160
  %168 = load i32, i32* @stderr, align 4
  %169 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %170 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @fprintf(i32 %168, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %167, %164
  br label %174

174:                                              ; preds = %173, %155, %152
  %175 = load i64, i64* @tracing, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %195

177:                                              ; preds = %174
  %178 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %179 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @slabs, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %187 = call i32 @set_obj(%struct.slabinfo* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 1)
  br label %194

188:                                              ; preds = %182
  %189 = load i32, i32* @stderr, align 4
  %190 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %191 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @fprintf(i32 %189, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i8* %192)
  br label %194

194:                                              ; preds = %188, %185
  br label %195

195:                                              ; preds = %194, %177, %174
  %196 = load i64, i64* @tracing, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %195
  %199 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %200 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %205 = call i32 @set_obj(%struct.slabinfo* %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 1)
  br label %206

206:                                              ; preds = %8, %203, %198, %195
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_obj(%struct.slabinfo*, i8*, i32) #1

declare dso_local i64 @slab_empty(%struct.slabinfo*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
