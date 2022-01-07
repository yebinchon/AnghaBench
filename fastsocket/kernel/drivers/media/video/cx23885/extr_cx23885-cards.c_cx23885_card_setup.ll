; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-cards.c_cx23885_card_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-cards.c_cx23885_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.cx23885_tsport, %struct.cx23885_tsport }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cx23885_tsport = type { i32, i32, i32, i32, i8* }

@cx23885_card_setup.eeprom = internal global [256 x i32] zeroinitializer, align 16
@CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO = common dso_local global i8* null, align 8
@enable_885_ir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cx25840\00", align 1
@CX23885_HW_AV_CORE = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@load_fw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_card_setup(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  %3 = alloca %struct.cx23885_tsport*, align 8
  %4 = alloca %struct.cx23885_tsport*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %5 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %5, i32 0, i32 5
  store %struct.cx23885_tsport* %6, %struct.cx23885_tsport** %3, align 8
  %7 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %7, i32 0, i32 4
  store %struct.cx23885_tsport* %8, %struct.cx23885_tsport** %4, align 8
  %9 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %10 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %18 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 80, i32* %22, align 4
  %23 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %24 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = call i32 @tveeprom_read(%struct.TYPE_7__* %27, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 0), i32 1024)
  br label %29

29:                                               ; preds = %16, %1
  %30 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %31 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %76 [
    i32 147, label %33
    i32 141, label %52
    i32 140, label %52
    i32 142, label %52
    i32 138, label %64
    i32 137, label %64
    i32 149, label %64
    i32 139, label %64
    i32 145, label %64
    i32 144, label %64
    i32 146, label %64
    i32 148, label %64
    i32 136, label %64
    i32 143, label %64
  ]

33:                                               ; preds = %29
  %34 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %35 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 128), align 16
  %43 = icmp ne i32 %42, 132
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %46 = call i32 @hauppauge_eeprom(%struct.cx23885_dev* %45, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 192))
  br label %50

47:                                               ; preds = %41
  %48 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %49 = call i32 @hauppauge_eeprom(%struct.cx23885_dev* %48, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 128))
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %33
  br label %76

52:                                               ; preds = %29, %29, %29
  %53 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %54 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %62 = call i32 @hauppauge_eeprom(%struct.cx23885_dev* %61, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 128))
  br label %63

63:                                               ; preds = %60, %52
  br label %76

64:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  %65 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %66 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %74 = call i32 @hauppauge_eeprom(%struct.cx23885_dev* %73, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @cx23885_card_setup.eeprom, i64 0, i64 192))
  br label %75

75:                                               ; preds = %72, %64
  br label %76

76:                                               ; preds = %29, %75, %63, %51
  %77 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %78 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %170 [
    i32 152, label %80
    i32 151, label %80
    i32 153, label %88
    i32 138, label %96
    i32 129, label %115
    i32 128, label %123
    i32 154, label %123
    i32 130, label %131
    i32 132, label %146
    i32 133, label %146
    i32 131, label %154
    i32 147, label %169
    i32 141, label %169
    i32 140, label %169
    i32 137, label %169
    i32 149, label %169
    i32 139, label %169
    i32 142, label %169
    i32 135, label %169
    i32 156, label %169
    i32 145, label %169
    i32 144, label %169
    i32 146, label %169
    i32 148, label %169
    i32 136, label %169
    i32 155, label %169
    i32 143, label %169
    i32 150, label %169
  ]

80:                                               ; preds = %76, %76
  %81 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %82 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %81, i32 0, i32 0
  store i32 12, i32* %82, align 8
  %83 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %84 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %86 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %87 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %76, %80
  %89 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %90 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %89, i32 0, i32 0
  store i32 12, i32* %90, align 8
  %91 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %92 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %94 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %95 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  br label %178

96:                                               ; preds = %76
  %97 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %98 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %97, i32 0, i32 0
  store i32 270, i32* %98, align 8
  %99 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %100 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %102 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %103 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %105 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %104, i32 0, i32 2
  store i32 8192, i32* %105, align 8
  %106 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %107 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %106, i32 0, i32 3
  store i32 4656076, i32* %107, align 4
  %108 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %109 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %108, i32 0, i32 0
  store i32 12, i32* %109, align 8
  %110 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %111 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %113 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %114 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  br label %178

115:                                              ; preds = %76
  %116 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %117 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %116, i32 0, i32 0
  store i32 4, i32* %117, align 8
  %118 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %119 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %121 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %122 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  br label %178

123:                                              ; preds = %76, %76
  %124 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %125 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %124, i32 0, i32 0
  store i32 5, i32* %125, align 8
  %126 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %127 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %129 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %130 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  br label %178

131:                                              ; preds = %76
  %132 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %133 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %132, i32 0, i32 0
  store i32 12, i32* %133, align 8
  %134 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %135 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  %136 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %137 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %138 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %140 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %139, i32 0, i32 0
  store i32 12, i32* %140, align 8
  %141 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %142 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %141, i32 0, i32 1
  store i32 1, i32* %142, align 4
  %143 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %144 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %145 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  br label %178

146:                                              ; preds = %76, %76
  %147 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %148 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %147, i32 0, i32 0
  store i32 5, i32* %148, align 8
  %149 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %150 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %149, i32 0, i32 1
  store i32 1, i32* %150, align 4
  %151 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %152 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %153 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  br label %178

154:                                              ; preds = %76
  %155 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %156 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %155, i32 0, i32 0
  store i32 5, i32* %156, align 8
  %157 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %158 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  %159 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %160 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %3, align 8
  %161 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %163 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %162, i32 0, i32 0
  store i32 12, i32* %163, align 8
  %164 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %165 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %164, i32 0, i32 1
  store i32 1, i32* %165, align 4
  %166 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %167 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %168 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %167, i32 0, i32 4
  store i8* %166, i8** %168, align 8
  br label %178

169:                                              ; preds = %76, %76, %76, %76, %76, %76, %76, %76, %76, %76, %76, %76, %76, %76, %76, %76, %76
  br label %170

170:                                              ; preds = %76, %169
  %171 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %172 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %171, i32 0, i32 0
  store i32 12, i32* %172, align 8
  %173 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %174 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %173, i32 0, i32 1
  store i32 1, i32* %174, align 4
  %175 = load i8*, i8** @CX23885_SRC_SEL_PARALLEL_MPEG_VIDEO, align 8
  %176 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %4, align 8
  %177 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %176, i32 0, i32 4
  store i8* %175, i8** %177, align 8
  br label %178

178:                                              ; preds = %170, %154, %146, %131, %123, %115, %96, %88
  %179 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %180 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  switch i32 %181, label %215 [
    i32 128, label %182
    i32 147, label %182
    i32 138, label %187
    i32 137, label %187
    i32 139, label %187
    i32 135, label %187
    i32 156, label %187
    i32 130, label %187
    i32 155, label %187
    i32 136, label %187
    i32 132, label %187
    i32 133, label %187
    i32 143, label %187
    i32 134, label %187
    i32 150, label %187
  ]

182:                                              ; preds = %178, %178
  %183 = load i32, i32* @enable_885_ir, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  br label %215

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %178, %178, %178, %178, %178, %178, %178, %178, %178, %178, %178, %178, %178, %186
  %188 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %189 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %188, i32 0, i32 3
  %190 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %191 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %190, i32 0, i32 2
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i64 2
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = call %struct.TYPE_6__* @v4l2_i2c_new_subdev(i32* %189, i32* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 68, i32* null)
  %196 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %197 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %196, i32 0, i32 1
  store %struct.TYPE_6__* %195, %struct.TYPE_6__** %197, align 8
  %198 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %199 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = icmp ne %struct.TYPE_6__* %200, null
  br i1 %201, label %202, label %214

202:                                              ; preds = %187
  %203 = load i32, i32* @CX23885_HW_AV_CORE, align 4
  %204 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %205 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %204, i32 0, i32 1
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  store i32 %203, i32* %207, align 4
  %208 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %209 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %208, i32 0, i32 1
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = load i32, i32* @core, align 4
  %212 = load i32, i32* @load_fw, align 4
  %213 = call i32 @v4l2_subdev_call(%struct.TYPE_6__* %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %202, %187
  br label %215

215:                                              ; preds = %178, %214, %185
  %216 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %217 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  switch i32 %218, label %222 [
    i32 130, label %219
  ]

219:                                              ; preds = %215
  %220 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %221 = call i32 @netup_initialize(%struct.cx23885_dev* %220)
  br label %222

222:                                              ; preds = %215, %219
  ret void
}

declare dso_local i32 @tveeprom_read(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @hauppauge_eeprom(%struct.cx23885_dev*, i32*) #1

declare dso_local %struct.TYPE_6__* @v4l2_i2c_new_subdev(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @netup_initialize(%struct.cx23885_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
