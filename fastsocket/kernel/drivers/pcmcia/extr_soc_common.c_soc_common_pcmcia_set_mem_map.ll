; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_common_pcmcia_set_mem_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_common_pcmcia_set_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.pccard_mem_map = type { i16, i64, i32, i64, i64 }
%struct.soc_pcmcia_socket = type { i16*, i16*, %struct.TYPE_2__*, %struct.resource, %struct.resource }
%struct.TYPE_2__ = type { i32 (%struct.soc_pcmcia_socket*)* }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"map %u speed %u card_start %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"flags: %s%s%s%s%s%s%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<NONE>\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAP_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"ACTIVE \00", align 1
@MAP_16BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"16BIT \00", align 1
@MAP_AUTOSZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"AUTOSZ \00", align 1
@MAP_0WS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"0WS \00", align 1
@MAP_WRPROT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"WRPROT \00", align 1
@MAP_ATTRIB = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"ATTRIB \00", align 1
@MAP_USE_WAIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"USE_WAIT \00", align 1
@MAX_WIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, %struct.pccard_mem_map*)* @soc_common_pcmcia_set_mem_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_common_pcmcia_set_mem_map(%struct.pcmcia_socket* %0, %struct.pccard_mem_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca %struct.pccard_mem_map*, align 8
  %6 = alloca %struct.soc_pcmcia_socket*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i16, align 2
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store %struct.pccard_mem_map* %1, %struct.pccard_mem_map** %5, align 8
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %10 = call %struct.soc_pcmcia_socket* @to_soc_pcmcia_socket(%struct.pcmcia_socket* %9)
  store %struct.soc_pcmcia_socket* %10, %struct.soc_pcmcia_socket** %6, align 8
  %11 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %12 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  store i16 %13, i16* %8, align 2
  %14 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %6, align 8
  %15 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %16 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %19 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 8
  %21 = zext i16 %20 to i32
  %22 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %23 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (%struct.soc_pcmcia_socket*, i32, i8*, ...) @debug(%struct.soc_pcmcia_socket* %14, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %21, i64 %24)
  %26 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %6, align 8
  %27 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %28 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %33 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %34 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MAP_ACTIVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %41 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %42 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MAP_16BIT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %49 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %50 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MAP_AUTOSZ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %57 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %58 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MAP_0WS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %65 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %66 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MAP_WRPROT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %73 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %74 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MAP_ATTRIB, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %81 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %82 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MAP_USE_WAIT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %89 = call i32 (%struct.soc_pcmcia_socket*, i32, i8*, ...) @debug(%struct.soc_pcmcia_socket* %26, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %40, i8* %48, i8* %56, i8* %64, i8* %72, i8* %80, i8* %88)
  %90 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %91 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MAX_WIN, align 8
  %94 = icmp uge i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %2
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %172

98:                                               ; preds = %2
  %99 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %100 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MAP_ACTIVE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i16, i16* %8, align 2
  %107 = zext i16 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i16 300, i16* %8, align 2
  br label %110

110:                                              ; preds = %109, %105
  br label %112

111:                                              ; preds = %98
  store i16 0, i16* %8, align 2
  br label %112

112:                                              ; preds = %111, %110
  %113 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %114 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MAP_ATTRIB, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %112
  %120 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %6, align 8
  %121 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %120, i32 0, i32 4
  store %struct.resource* %121, %struct.resource** %7, align 8
  %122 = load i16, i16* %8, align 2
  %123 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %6, align 8
  %124 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %123, i32 0, i32 0
  %125 = load i16*, i16** %124, align 8
  %126 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %127 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i16, i16* %125, i64 %128
  store i16 %122, i16* %129, align 2
  %130 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %6, align 8
  %131 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %130, i32 0, i32 1
  %132 = load i16*, i16** %131, align 8
  %133 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %134 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i16, i16* %132, i64 %135
  store i16 0, i16* %136, align 2
  br label %155

137:                                              ; preds = %112
  %138 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %6, align 8
  %139 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %138, i32 0, i32 3
  store %struct.resource* %139, %struct.resource** %7, align 8
  %140 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %6, align 8
  %141 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %140, i32 0, i32 0
  %142 = load i16*, i16** %141, align 8
  %143 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %144 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i16, i16* %142, i64 %145
  store i16 0, i16* %146, align 2
  %147 = load i16, i16* %8, align 2
  %148 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %6, align 8
  %149 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %148, i32 0, i32 1
  %150 = load i16*, i16** %149, align 8
  %151 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %152 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i16, i16* %150, i64 %153
  store i16 %147, i16* %154, align 2
  br label %155

155:                                              ; preds = %137, %119
  %156 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %6, align 8
  %157 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %156, i32 0, i32 2
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32 (%struct.soc_pcmcia_socket*)*, i32 (%struct.soc_pcmcia_socket*)** %159, align 8
  %161 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %6, align 8
  %162 = call i32 %160(%struct.soc_pcmcia_socket* %161)
  %163 = load %struct.resource*, %struct.resource** %7, align 8
  %164 = getelementptr inbounds %struct.resource, %struct.resource* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %167 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  %170 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %171 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %170, i32 0, i32 4
  store i64 %169, i64* %171, align 8
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %155, %95
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.soc_pcmcia_socket* @to_soc_pcmcia_socket(%struct.pcmcia_socket*) #1

declare dso_local i32 @debug(%struct.soc_pcmcia_socket*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
