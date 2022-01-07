; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riotable.c_RIOChangeName.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riotable.c_RIOChangeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i8*, %struct.Map* }
%struct.Map = type { i64, i64, i32, i8*, i64 }

@RIO_DEBUG_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Change name entry on host %x, rta %x, ID %d, Sysport %d\0A\00", align 1
@MAX_RUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Bad ID in map entry!\0A\00", align 1
@ID_NUMBER_OUT_OF_RANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Name entry contains non-printing characters!\0A\00", align 1
@BAD_CHARACTER_IN_NAME = common dso_local global i32 0, align 4
@RUN_STATE = common dso_local global i32 0, align 4
@RC_RUNNING = common dso_local global i32 0, align 4
@HOST_NOT_RUNNING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@RTA_NUMBER_WRONG = common dso_local global i32 0, align 4
@UNKNOWN_HOST_NUMBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Unknown host %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIOChangeName(%struct.rio_info* %0, %struct.Map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rio_info*, align 8
  %5 = alloca %struct.Map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Map*, align 8
  %8 = alloca i8*, align 8
  store %struct.rio_info* %0, %struct.rio_info** %4, align 8
  store %struct.Map* %1, %struct.Map** %5, align 8
  %9 = load i32, i32* @RIO_DEBUG_TABLE, align 4
  %10 = load %struct.Map*, %struct.Map** %5, align 8
  %11 = getelementptr inbounds %struct.Map, %struct.Map* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.Map*, %struct.Map** %5, align 8
  %14 = getelementptr inbounds %struct.Map, %struct.Map* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.Map*, %struct.Map** %5, align 8
  %17 = getelementptr inbounds %struct.Map, %struct.Map* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.Map*, %struct.Map** %5, align 8
  %20 = getelementptr inbounds %struct.Map, %struct.Map* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %9, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15, i32 %18, i32 %22)
  %24 = load %struct.Map*, %struct.Map** %5, align 8
  %25 = getelementptr inbounds %struct.Map, %struct.Map* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MAX_RUP, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load i32, i32* @RIO_DEBUG_TABLE, align 4
  %31 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ID_NUMBER_OUT_OF_RANGE, align 4
  %33 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %34 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %188

38:                                               ; preds = %2
  %39 = load %struct.Map*, %struct.Map** %5, align 8
  %40 = getelementptr inbounds %struct.Map, %struct.Map* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @MAX_NAME_LEN, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load %struct.Map*, %struct.Map** %5, align 8
  %47 = getelementptr inbounds %struct.Map, %struct.Map* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %72, %38
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp slt i32 %56, 32
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sgt i32 %61, 126
  br i1 %62, label %63, label %72

63:                                               ; preds = %58, %53
  %64 = load i32, i32* @RIO_DEBUG_TABLE, align 4
  %65 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @BAD_CHARACTER_IN_NAME, align 4
  %67 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %68 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %188

72:                                               ; preds = %58
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  br label %49

75:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %173, %75
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %79 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %176

82:                                               ; preds = %76
  %83 = load %struct.Map*, %struct.Map** %5, align 8
  %84 = getelementptr inbounds %struct.Map, %struct.Map* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %87 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %85, %93
  br i1 %94, label %95, label %172

95:                                               ; preds = %82
  %96 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %97 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @RUN_STATE, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @RC_RUNNING, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %95
  %109 = load i32, i32* @HOST_NOT_RUNNING, align 4
  %110 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %111 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @ENXIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %188

115:                                              ; preds = %95
  %116 = load %struct.Map*, %struct.Map** %5, align 8
  %117 = getelementptr inbounds %struct.Map, %struct.Map* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %122 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %121, i32 0, i32 2
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.Map*, %struct.Map** %5, align 8
  %130 = getelementptr inbounds %struct.Map, %struct.Map* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* @MAX_NAME_LEN, align 4
  %133 = call i32 @memcpy(i8* %128, i8* %131, i32 %132)
  store i32 0, i32* %3, align 4
  br label %188

134:                                              ; preds = %115
  %135 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %136 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %135, i32 0, i32 2
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load %struct.Map*, %struct.Map** %141, align 8
  %143 = load %struct.Map*, %struct.Map** %5, align 8
  %144 = getelementptr inbounds %struct.Map, %struct.Map* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.Map, %struct.Map* %142, i64 %147
  store %struct.Map* %148, %struct.Map** %7, align 8
  %149 = load %struct.Map*, %struct.Map** %7, align 8
  %150 = getelementptr inbounds %struct.Map, %struct.Map* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.Map*, %struct.Map** %5, align 8
  %153 = getelementptr inbounds %struct.Map, %struct.Map* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %134
  %157 = load i32, i32* @RTA_NUMBER_WRONG, align 4
  %158 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %159 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 4
  %161 = load i32, i32* @ENXIO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %188

163:                                              ; preds = %134
  %164 = load %struct.Map*, %struct.Map** %7, align 8
  %165 = getelementptr inbounds %struct.Map, %struct.Map* %164, i32 0, i32 3
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.Map*, %struct.Map** %5, align 8
  %168 = getelementptr inbounds %struct.Map, %struct.Map* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* @MAX_NAME_LEN, align 4
  %171 = call i32 @memcpy(i8* %166, i8* %169, i32 %170)
  store i32 0, i32* %3, align 4
  br label %188

172:                                              ; preds = %82
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %76

176:                                              ; preds = %76
  %177 = load i32, i32* @UNKNOWN_HOST_NUMBER, align 4
  %178 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %179 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 4
  %181 = load i32, i32* @RIO_DEBUG_TABLE, align 4
  %182 = load %struct.Map*, %struct.Map** %5, align 8
  %183 = getelementptr inbounds %struct.Map, %struct.Map* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %181, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %184)
  %186 = load i32, i32* @ENXIO, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %176, %163, %156, %120, %108, %63, %29
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @rio_dprintk(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
